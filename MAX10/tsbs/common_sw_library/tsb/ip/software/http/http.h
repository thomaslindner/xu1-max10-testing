/******************************************************************************
* Copyright (c) 2006 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
*******************************************************************************
*                                                                             *
* File: http.h                                                                *
*                                                                             *
* Headers for our "basic" implementation of HTTP. Please note this is not a   *
* complete implementation only enough for our demo web server.                *
*                                                                             *
* Please refer to file ReadMe.txt for notes on this software example.         *
******************************************************************************/
#ifndef __HTTP_H__
#define __HTTP_H__
#include  "chan_fatfs/ff.h"
#include "basedef.h"
#include <sys/alt_flash.h>
#define   HTTP_RX_BUF_SIZE      8192  /* Receive buffer size */
#define   HTTP_TX_BUF_SIZE      8192  /* Transmission buffer size */
#define   HTTP_URI_SIZE         8192  /* Max size of a URI *URL) string */
#define   HTTP_KEEP_ALIVE_COUNT 20    /* Max number of files per connection */
#define   HTTP_KEEP_ALIVE_TIME  5000  /* TCP connection keep-alive time (ms) */
#define   HTTP_PORT             HTTP_PORT_FOR_INTEGRATED_PROJECT    /* TCP port number to listen on */
#define   HTTP_NUM_CONNECTIONS  20     /* Maximum concurrent HTTP connections */
#define   HTTP_MAX_LINE_SIZE    256   /* The maximum size of any line. */
#define   HTTP_T_SELECT_IN_SYSTEM_TICKS (20)

#define   HTTP_DEFAULT_FILE       "/index.html"
#define   HTTP_VERSION_STRING     "HTTP/1.1 "
#define   HTTP_OK                 200
#define   HTTP_OK_STRING          "200 OK\r\n"
#define   HTTP_NO_CONTENT_STRING  "204 No Content\r\n"
#define   HTTP_NOT_FOUND          404
#define   HTTP_NOT_FOUND_STRING   "404 Not Found\r\n"
#define   HTTP_NOT_FOUND_FILE     "/not_found.html"
#define   HTTP_CONTENT_TYPE       "Content-Type: "
#define   HTTP_CONTENT_TYPE_HTML  "text/html\r\n"
#define   HTTP_CONTENT_TYPE_TEXT  "text/plain\r\n"
#define   HTTP_CONTENT_TYPE_JPG   "image/jpg\r\n"
#define   HTTP_CONTENT_TYPE_JNLP  "application/x-java-jnlp-file"
#define   HTTP_CONTENT_TYPE_GIF   "image/gif\r\n"
#define   HTTP_CONTENT_TYPE_PNG   "image/png\r\n"
#define   HTTP_CONTENT_TYPE_JS    "application/x-javascript\r\n"
#define   HTTP_CONTENT_TYPE_CSS   "text/css\r\n"
#define   HTTP_CONTENT_TYPE_SWF   "application/x-shockwave-flash\r\n"
#define   HTTP_CONTENT_TYPE_ICO   "image/vnd.microsoft.icon\r\n"
#define   HTTP_CONTENT_LENGTH     "Content-Length: "
#define   HTTP_KEEP_ALIVE         "Connection: Keep-Alive\r\n"
#define   HTTP_CLOSE              "Connection: close\r\n"
#define   HTTP_CR_LF              "\r\n"
#define   HTTP_END_OF_HEADERS     "\r\n\r\n"
#define   HTTP_CT_SIZE            40
#define   BOUNDARY_SIZE           80
#define   MAXLINE                 256

#define   UPLOAD_BUF_SIZE         6000
typedef enum      { READY_HTTP, PROCESS_HTTP, DATA_HTTP, COMPLETE_HTTP, RESET_HTTP, CLOSE_HTTP } HTTP_state;
typedef enum      { UNKNOWN=0, GET, POST } HTTP_action;
typedef enum      { COUNTED=0,CHUNKED,UNKNOWN_ENC } HTTP_rx_encoding;
typedef struct http_socket
{
  HTTP_state state;
  HTTP_action action;
  HTTP_rx_encoding rx_encoding;
  int       fd;                   /* Socket descriptor */
  int       close;                /* Close the connection after we're done? */
  int       content_length;       /* Extracted content length */
  int       content_received;     /* Content we've received on this connection. */
  int       keep_alive_count;     /* No. of files tx'd in single connection */
  unsigned int       file_length;          /* Length of the current file being sent */
  unsigned int       data_sent;            /* Number of bytes already sent */
  int       file_upload;          /* File upload flag. */
  FIL       file_handle;          /* File handle for file we're sending */
  int       file_is_currently_open;
  int       file_is_actually_a_c_string; /*used to "trick" conn to send a string instead of a file */
  int       file_is_actually_flash;
  int       file_is_actually_memory;
  void* flash_ptr;
  int memory_region_index;
  int memory_region_base;
  int memory_region_length;
  int current_flash_offset;
  unsigned int current_mem_offset;
  char *    c_string_to_send_instead_of_file;
  int       we_are_actually_doing_a_bw_check;
  alt_u32   activity_time;        /* Time of last HTTP activity */
  alt_u8*   rx_rd_pos;            /* position we've read up to */
  alt_u8*   rx_wr_pos;            /* position we've written up to */
  alt_u8*   srec_start;           /* place holder for the start of an SREC buffer. */
  alt_u8*   srec_end;	            /* place holder for the end of an SREC buffer. */
  alt_u8*   rx_buffer;            /* pointer to global RX buffer */
  alt_u8*   tx_buffer;            /* pointer to global TX buffer */
  alt_u8    filename[HTTP_URI_SIZE+100];         /* filename for an uploaded file */
  alt_u8    flash_device[20];     /* Flash Device field */
  alt_u8    content_type[HTTP_CT_SIZE];  /* content type for detecting multipart forms. */
  alt_u8    boundary[BOUNDARY_SIZE];         /* Boundary between elements of a multi-part form. */
  alt_u8    uri[HTTP_URI_SIZE];   /* URI buffer */
} http_conn;

extern void WSTask(void *);

extern OS_EVENT *SSSLINNUX_HTTP_TCL_CommandQ;
extern OS_EVENT *SSSLINNUX_HTTP_TCL_Command_Response_Q;

#define BASE_DIRECTORY_PATH ""

typedef enum { HTTP_ACCEPT_RTSTATUS_HTTP_OK = 0, HTTP_ACCEPT_RTSTATUS_MAX_HTTP_CONN = -1, HTTP_ACCEPT_RTSTATUS_ACCEPT_FAILED=-2 } HTTP_ACCEPT_RTSTATUS;


#define LENGTH_OF_RANDOM_STRING_FOR_BW_CHECK (HTTP_TX_BUF_SIZE/2)

#endif /* __HTTP_H__ */

/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2006 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
* Altera does not recommend, suggest or require that this reference design    *
* file be used in conjunction or combination with any other product.          *
******************************************************************************/

