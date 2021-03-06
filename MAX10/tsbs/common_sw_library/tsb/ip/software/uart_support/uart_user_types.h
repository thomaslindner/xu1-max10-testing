#ifndef UART_USER_TYPES_H
#define UART_USER_TYPES_H

typedef enum {
	GENERIC_UART_REGFILE = 0,
	BERC_CTRL_UART_REGFILE = 1,
	DESERIALIZER_CTRL_UART_REGFILE = 2,
	SPARTAN_ADC_CTRL_UART_REGFILE = 3,
	FMC_MCS_UART_REGFILE = 4,
	BOARD_MGMT_UART_REGFILE = 5,
	GRIF16_ADC_DESER_AND_DAC_CTRL_REGFILE = 6,
	SERIALLITE_PRIORITY_PACKETS_CTRL_REGFILE = 7,
	GRIFC_SLAVE_CTRL_REGFILE = 8,
	TOP_LEVEL_UART_REGFILE_TYPE = 9,
	SECONDARY_TOP_LEVEL_UART_REGFILE = 10,
	PACKET_MUX_16_TO_1_AVALON_MM_MAPPED_UART_REGFILE = 11,
	MAXV_UART_REGFILE = 12,
	ADC12EU050_UART_REGFILE = 13,
	MPFE_UART_REGFILE = 14,
	DEAP_DTM_TRIGGER_UART_REGFILE = 15,
	PACKET_MUX_8_TO_1_AVALON_MM_MAPPED_UART_REGFILE = 16,
	ARRIA_V_XCVR_PHY_CTRL_REGFILE = 17,
	ARRIA_V_JESD204B_TIADC12J4000_CTRL_REGFILE = 18,
	ARRIA_V_JESD204B_TIADC12J4000_DIAGNOSTIC_REGFILE = 19,
	AVSOC_JESD_ENCAPSULATOR_TOP_CTRL_REGFILE = 20,
	OPENCORES_SPI_UART_REGFILE = 21,
	OPENCORES_SPI_DIAGNOSTIC_UART_REGFILE = 22,
	LMK04828_OPENCORES_SPI_UART_REGFILE = 23,
	LMK04828_OPENCORES_SPI_DIAGNOSTIC_UART_REGFILE = 24,
	AD9680_OPENCORES_SPI_UART_REGFILE = 25,
	AD9680_OPENCORES_SPI_DIAGNOSTIC_UART_REGFILE = 26,
	JESD_CONTROL_UNIT_AVALON_MM_MAPPED_UART_REGFILE = 27,
	NIOS_DACS_STANDALONE_REGFILE = 28,
	JESD_NIOS_DACS_STANDALONE_REGFILE = 29,
	JESD_SYSREF_PLL_AVALON_MM_MAPPED_UART_REGFILE = 30,
	ARRIA_V_SLITE_FOUR_LANE_XCVR_PHY_CTRL_REGFILE = 31,
	ARRIA_V_SLITE_FOUR_LANE_XCVR_RECONFIG_CTRL_REGFILE = 32,
	ARRIA_V_SLITE_FOUR_LANE_DIAGNOSTIC_REGFILE = 33,
	UDP_TEST_PACKET_GENERATOR_REGFILE = 34,
	TOP_UDP_STREAMER_CTRL_REGFILE = 35,
	STANDALONE_HW_UDP_DMA_UART_REGFILE = 36,
	STRATIX_IV_FOUR_LANE_STREAMING_SLITE_REGFILE = 37,
	ERROR_MONITOR_REGFILE = 38,
	SLITE_ERROR_MONITOR_REGFILE = 39,
	RATE_MATCH_FIFO_REGFILE = 40,
	NIOS_MULTI_DAC_STANDALONE_REGFILE = 41,
	ZL9101M_UART_REGFILE = 42,
	AD9249_OPENCORES_SPI_UART_REGFILE = 43,
	AD9249_OPENCORES_SPI_DIAGNOSTIC_UART_REGFILE = 44,
	GENERIC_REFRAMER_REGFILE = 45,
    GENERIC_PARELLELIZER_2X_REGFILE = 46,
	DATA_ACQUISITION_TRIGGERED_FIFO = 47,
	CLOCK_RATE_MEASURE_REGFILE = 48,
    CLOCK_PHASE_LOCK_MONITOR_REGFILE = 49,
    LTC2983_UART_REGFILE = 50,
	TX8B10B_SIMPLE_LINK_REGFILE = 51,
	RX8B10B_SIMPLE_LINK_REGFILE = 52,
	LTC2380_IVC102_REGFILE = 53,
	DCB_UART_REGFILE = 54,
	STREAM_TO_DMA_REGFILE = 55,
	MAX11000_UART_REGFILE = 56,
	JOINT_LTC2380_IVC102_MAX11000_UART_REGFILE = 57,
	UDP_PACKET_SPLITTER_UART_REGFILE = 58,
	MULTI_STREAM_PACKETIZER_UART_REGFILE = 59,
	MULTI_TEST_SIGNAL_GENERATOR_UART_REGFILE = 60,
	CLOCK_MEASURE_EXACT_UART_REGFILE = 63,
	EMBED_2_BIT_SERIAL_DATA_UART_REGFILE = 64,
	MULTI_SPI_SLAVE_RECEIVER_UART_REGFILE = 65,
	EMIF_EFFICIENCY_MONITOR_UART_REGFILE = 66
}   uart_user_types;

#endif
