/*------------------------------------------------------------------------/
/  Bitbanging MMCv3/SDv1/SDv2 (in SPI mode) control module for PFF
/-------------------------------------------------------------------------/
/
/  Copyright (C) 2014, ChaN, all right reserved.
/
/ * This software is a free software and there is NO WARRANTY.
/ * No restriction on use. You can use, modify and redistribute it for
/   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
/ * Redistributions of source code must retain the above copyright notice.
/
/--------------------------------------------------------------------------/
 Features:

 * Very Easy to Port
   It uses only 4-6 bit of GPIO port. No interrupt, no SPI port is used.

 * Platform Independent
   You need to modify only a few macros to control GPIO ports.

/-------------------------------------------------------------------------*/

#include "pffconf.h"
#include "diskio.h"


/*-------------------------------------------------------------------------*/
/* Platform dependent macros and functions needed to be modified           */
/*-------------------------------------------------------------------------*/

#include "petit_fatfs_macro_definitions.h"
#if USE_HW_SPI_FOR_SD_CARD
#include "sd_spi_master.h"
#endif

/*--------------------------------------------------------------------------

   Module Private Functions

---------------------------------------------------------------------------*/

/* Definitions for MMC/SDC command */
#define CMD0	(0x40+0)	/* GO_IDLE_STATE */
#define CMD1	(0x40+1)	/* SEND_OP_COND (MMC) */
#define	ACMD41	(0xC0+41)	/* SEND_OP_COND (SDC) */
#define CMD8	(0x40+8)	/* SEND_IF_COND */
#define CMD16	(0x40+16)	/* SET_BLOCKLEN */
#define CMD17	(0x40+17)	/* READ_SINGLE_BLOCK */
#define CMD24	(0x40+24)	/* WRITE_BLOCK */
#define CMD55	(0x40+55)	/* APP_CMD */
#define CMD58	(0x40+58)	/* READ_OCR */

/* Card type flags (CardType) */
#define CT_MMC				0x01	/* MMC ver 3 */
#define CT_SD1				0x02	/* SD ver 1 */
#define CT_SD2				0x04	/* SD ver 2 */
#define CT_SDC				(CT_SD1|CT_SD2)	/* SD */
#define CT_BLOCK			0x08	/* Block addressing */



static
BYTE CardType;			/* b0:MMC, b1:SDv1, b2:SDv2, b3:Block addressing */



/*-----------------------------------------------------------------------*/
/* Transmit a byte to the MMC (bitbanging)                               */
/*-----------------------------------------------------------------------*/

static
void xmit_mmc (
	BYTE d			/* Data to be sent */
)
{

#if USE_HW_SPI_FOR_SD_CARD
	TRANSMIT_U8(d);
#else
	if (d & 0x80) DI_H(); else DI_L();	/* bit7 */
	CK_H(); CK_L();
	if (d & 0x40) DI_H(); else DI_L();	/* bit6 */
	CK_H(); CK_L();
	if (d & 0x20) DI_H(); else DI_L();	/* bit5 */
	CK_H(); CK_L();
	if (d & 0x10) DI_H(); else DI_L();	/* bit4 */
	CK_H(); CK_L();
	if (d & 0x08) DI_H(); else DI_L();	/* bit3 */
	CK_H(); CK_L();
	if (d & 0x04) DI_H(); else DI_L();	/* bit2 */
	CK_H(); CK_L();
	if (d & 0x02) DI_H(); else DI_L();	/* bit1 */
	CK_H(); CK_L();
	if (d & 0x01) DI_H(); else DI_L();	/* bit0 */
	CK_H(); CK_L();
#endif
}



/*-----------------------------------------------------------------------*/
/* Receive a byte from the MMC (bitbanging)                              */
/*-----------------------------------------------------------------------*/
#if USE_HW_SPI_FOR_SD_CARD
#define rcvr_mmc()  ReceiveU8()
#else
static
BYTE rcvr_mmc (void)
{
	BYTE r;


	DI_H();	/* Send 0xFF */

	r = 0;   if (DO) r++;	/* bit7 */
	CK_H(); CK_L();
	r <<= 1; if (DO) r++;	/* bit6 */
	CK_H(); CK_L();
	r <<= 1; if (DO) r++;	/* bit5 */
	CK_H(); CK_L();
	r <<= 1; if (DO) r++;	/* bit4 */
	CK_H(); CK_L();
	r <<= 1; if (DO) r++;	/* bit3 */
	CK_H(); CK_L();
	r <<= 1; if (DO) r++;	/* bit2 */
	CK_H(); CK_L();
	r <<= 1; if (DO) r++;	/* bit1 */
	CK_H(); CK_L();
	r <<= 1; if (DO) r++;	/* bit0 */
	CK_H(); CK_L();

	return r;
}
#endif



/*-----------------------------------------------------------------------*/
/* Skip bytes on the MMC (bitbanging)                                    */
/*-----------------------------------------------------------------------*/

static
void skip_mmc (
	UINT n		/* Number of bytes to skip */
)
{
#if !USE_HW_SPI_FOR_SD_CARD
	DI_H();	/* Send 0xFF */
#endif

	do {

#if USE_HW_SPI_FOR_SD_CARD
	   ReceiveU8();
#else

		CK_H(); CK_L();
		CK_H(); CK_L();
		CK_H(); CK_L();
		CK_H(); CK_L();
		CK_H(); CK_L();
		CK_H(); CK_L();
		CK_H(); CK_L();
		CK_H(); CK_L();
#endif
	} while (--n);
}



/*-----------------------------------------------------------------------*/
/* Deselect the card and release SPI bus                                 */
/*-----------------------------------------------------------------------*/

static
void release_spi (void)
{
#if USE_HW_SPI_FOR_SD_CARD
	DESELECT();
#else
	CS_H();
#endif
	rcvr_mmc();

}




/*-----------------------------------------------------------------------*/
/* Deselect the card and release SPI bus                                 */
/*-----------------------------------------------------------------------*/

static
void get_control_of_spi (void)
{
#if USE_HW_SPI_FOR_SD_CARD
	SELECT();
#else
	CS_L();
#endif
}

/*-----------------------------------------------------------------------*/
/* Send a command packet to MMC                                          */
/*-----------------------------------------------------------------------*/

static
BYTE send_cmd (
	BYTE cmd,		/* Command byte */
	DWORD arg		/* Argument */
)
{
	BYTE n, res;


	if (cmd & 0x80) {	/* ACMD<n> is the command sequense of CMD55-CMD<n> */
		cmd &= 0x7F;
		res = send_cmd(CMD55, 0);
		if (res > 1) return res;
	}

	/* Select the card */
	release_spi();
	get_control_of_spi(); rcvr_mmc();

	/* Send a command packet */
	xmit_mmc(cmd);					/* Start + Command index */
	xmit_mmc((BYTE)(arg >> 24));	/* Argument[31..24] */
	xmit_mmc((BYTE)(arg >> 16));	/* Argument[23..16] */
	xmit_mmc((BYTE)(arg >> 8));		/* Argument[15..8] */
	xmit_mmc((BYTE)arg);			/* Argument[7..0] */

	n = 0x01;						/* Dummy CRC + Stop */
	if (cmd == CMD0) n = 0x95;		/* Valid CRC for CMD0(0) */
	if (cmd == CMD8) n = 0x87;		/* Valid CRC for CMD8(0x1AA) */
	xmit_mmc(n);

	/* Receive a command response */
	n = 10;								/* Wait for a valid response in timeout of 10 attempts */
	do {
		res = rcvr_mmc();
	} while ((res & 0x80) && --n);

	return res;			/* Return with the response value */
}



/*--------------------------------------------------------------------------

   Public Functions

---------------------------------------------------------------------------*/


/*-----------------------------------------------------------------------*/
/* Initialize Disk Drive                                                 */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (void)
{
	BYTE n, cmd, ty, buf[4];
	UINT tmr;


	INIT_PORT();
	release_spi();
	skip_mmc(10);			/* Dummy clocks */

	ty = 0;
	if (send_cmd(CMD0, 0) == 1) {			/* Enter Idle state */
		if (send_cmd(CMD8, 0x1AA) == 1) {	/* SDv2 */
			for (n = 0; n < 4; n++) buf[n] = rcvr_mmc();	/* Get trailing return value of R7 resp */
			if (buf[2] == 0x01 && buf[3] == 0xAA) {			/* The card can work at vdd range of 2.7-3.6V */
				for (tmr = 1000; tmr; tmr--) {				/* Wait for leaving idle state (ACMD41 with HCS bit) */
					if (send_cmd(ACMD41, 1UL << 30) == 0) break;
					DLY_US(1000);
				}
				if (tmr && send_cmd(CMD58, 0) == 0) {		/* Check CCS bit in the OCR */
					for (n = 0; n < 4; n++) buf[n] = rcvr_mmc();
					ty = (buf[0] & 0x40) ? CT_SD2 | CT_BLOCK : CT_SD2;	/* SDv2 (HC or SC) */
				}
			}
		} else {							/* SDv1 or MMCv3 */
			if (send_cmd(ACMD41, 0) <= 1) 	{
				ty = CT_SD1; cmd = ACMD41;	/* SDv1 */
			} else {
				ty = CT_MMC; cmd = CMD1;	/* MMCv3 */
			}
			for (tmr = 1000; tmr; tmr--) {			/* Wait for leaving idle state */
				if (send_cmd(cmd, 0) == 0) break;
				DLY_US(1000);
			}
			if (!tmr || send_cmd(CMD16, 512) != 0)			/* Set R/W block length to 512 */
				ty = 0;
		}
	}
	CardType = ty;
	release_spi();

	return ty ? 0 : STA_NOINIT;
}



/*-----------------------------------------------------------------------*/
/* Read partial sector                                                   */
/*-----------------------------------------------------------------------*/

DRESULT disk_readp (
	BYTE *buff,		/* Pointer to the read buffer (NULL:Read bytes are forwarded to the stream) */
	DWORD sector,	/* Sector number (LBA) */
	WORD offset,	/* Byte offset to read from (0..511) */
	WORD count		/* Number of bytes to read (ofs + cnt mus be <= 512) */
)
{
	DRESULT res;
	BYTE d;
	UINT bc, tmr;


	if (!(CardType & CT_BLOCK)) sector *= 512;	/* Convert to byte address if needed */

	res = RES_ERROR;
	if (send_cmd(CMD17, sector) == 0) {		/* READ_SINGLE_BLOCK */

		tmr = 1000;
		do {							/* Wait for data packet in timeout of 100ms */
			DLY_US(100);
			d = rcvr_mmc();
		} while (d == 0xFF && --tmr);

		if (d == 0xFE) {				/* A data packet arrived */
			bc = 514 - offset - count;

			/* Skip leading bytes */
			if (offset) skip_mmc(offset);

			/* Receive a part of the sector */
			if (buff) {	/* Store data to the memory */
#if USE_HW_SPI_FOR_SD_CARD
				    if (count > 3) {
						WORD count_div_4 = count >> 2;
						Set32BitTransfer();
						do {
							ReceiveU32(buff);
							buff+=4;
						} while (--count_div_4);
						Set8BitTransfer();
						count = count & 0x3;
				    }
					while (count--) {
						*buff++ = rcvr_mmc();
					}
#else
				do
					*buff++ = rcvr_mmc();
				while (--count);
#endif
			} else {	/* Forward data to the outgoing stream */
				do {
					d = rcvr_mmc();
					FORWARD(d);
				} while (--count);
			}

			/* Skip trailing bytes and CRC */
			skip_mmc(bc);

			res = RES_OK;
		}
	}

	release_spi();

	return res;
}



/*-----------------------------------------------------------------------*/
/* Write partial sector                                                  */
/*-----------------------------------------------------------------------*/
#if _USE_WRITE

DRESULT disk_writep (
	const BYTE *buff,	/* Pointer to the bytes to be written (NULL:Initiate/Finalize sector write) */
	DWORD sc			/* Number of bytes to send, Sector number (LBA) or zero */
)
{
	DRESULT res;
	UINT bc, tmr;
	static UINT wc;


	res = RES_ERROR;

	if (buff) {		/* Send data bytes */
		bc = (UINT)sc;
		while (bc && wc) {		/* Send data bytes to the card */
			xmit_mmc(*buff++);
			wc--; bc--;
		}
		res = RES_OK;
	} else {
		if (sc) {	/* Initiate sector write transaction */
			if (!(CardType & CT_BLOCK)) sc *= 512;	/* Convert to byte address if needed */
			if (send_cmd(CMD24, sc) == 0) {			/* WRITE_SINGLE_BLOCK */
				xmit_mmc(0xFF); xmit_mmc(0xFE);		/* Data block header */
				wc = 512;							/* Set byte counter */
				res = RES_OK;
			}
		} else {	/* Finalize sector write transaction */
			bc = wc + 2;
			while (bc--) xmit_mmc(0);	/* Fill left bytes and CRC with zeros */
			if ((rcvr_mmc() & 0x1F) == 0x05) {	/* Receive data resp and wait for end of write process in timeout of 300ms */
				for (tmr = 10000; rcvr_mmc() != 0xFF && tmr; tmr--)	/* Wait for ready (max 1000ms) */
					DLY_US(100);
				if (tmr) res = RES_OK;
			}
			release_spi();
		}
	}

	return res;
}
#endif
