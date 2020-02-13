	component linnux_support_1_uart_1_ic is
		port (
			clk_50_clk                                       : in  std_logic                     := 'X';             -- clk
			counter_64_bit_0_current_count_export            : out std_logic_vector(63 downto 0);                    -- export
			fmc_present_external_connection_export           : in  std_logic_vector(15 downto 0) := (others => 'X'); -- export
			generic_hdl_info_word_export                     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			hires_timer_irq_irq                              : out std_logic;                                        -- irq
			nios_avalon_mm_50mhz_waitrequest                 : out std_logic;                                        -- waitrequest
			nios_avalon_mm_50mhz_readdata                    : out std_logic_vector(31 downto 0);                    -- readdata
			nios_avalon_mm_50mhz_readdatavalid               : out std_logic;                                        -- readdatavalid
			nios_avalon_mm_50mhz_burstcount                  : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- burstcount
			nios_avalon_mm_50mhz_writedata                   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			nios_avalon_mm_50mhz_address                     : in  std_logic_vector(10 downto 0) := (others => 'X'); -- address
			nios_avalon_mm_50mhz_write                       : in  std_logic                     := 'X';             -- write
			nios_avalon_mm_50mhz_read                        : in  std_logic                     := 'X';             -- read
			nios_avalon_mm_50mhz_byteenable                  : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			nios_avalon_mm_50mhz_debugaccess                 : in  std_logic                     := 'X';             -- debugaccess
			pio_button_export                                : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			pio_button_irq_irq                               : out std_logic;                                        -- irq
			pio_dips_export                                  : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			pio_leds_export                                  : out std_logic_vector(8 downto 0);                     -- export
			reset_reset_n                                    : in  std_logic                     := 'X';             -- reset_n
			sd_clk_export                                    : out std_logic;                                        -- export
			sd_spi_cs_n_export                               : out std_logic;                                        -- export
			sd_spi_miso_export                               : in  std_logic                     := 'X';             -- export
			sd_spi_mosi_export                               : out std_logic;                                        -- export
			uart_0_external_connection_rxd                   : in  std_logic                     := 'X';             -- rxd
			uart_0_external_connection_txd                   : out std_logic;                                        -- txd
			uart_0_irq_irq                                   : out std_logic;                                        -- irq
			uart_enabled_word_export                         : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			uart_internal_disable_external_connection_export : out std_logic_vector(31 downto 0);                    -- export
			uart_internal_enable_external_connection_export  : out std_logic_vector(31 downto 0);                    -- export
			uart_is_regfile_external_connection_export       : in  std_logic_vector(31 downto 0) := (others => 'X')  -- export
		);
	end component linnux_support_1_uart_1_ic;

	u0 : component linnux_support_1_uart_1_ic
		port map (
			clk_50_clk                                       => CONNECTED_TO_clk_50_clk,                                       --                                    clk_50.clk
			counter_64_bit_0_current_count_export            => CONNECTED_TO_counter_64_bit_0_current_count_export,            --            counter_64_bit_0_current_count.export
			fmc_present_external_connection_export           => CONNECTED_TO_fmc_present_external_connection_export,           --           fmc_present_external_connection.export
			generic_hdl_info_word_export                     => CONNECTED_TO_generic_hdl_info_word_export,                     --                     generic_hdl_info_word.export
			hires_timer_irq_irq                              => CONNECTED_TO_hires_timer_irq_irq,                              --                           hires_timer_irq.irq
			nios_avalon_mm_50mhz_waitrequest                 => CONNECTED_TO_nios_avalon_mm_50mhz_waitrequest,                 --                      nios_avalon_mm_50mhz.waitrequest
			nios_avalon_mm_50mhz_readdata                    => CONNECTED_TO_nios_avalon_mm_50mhz_readdata,                    --                                          .readdata
			nios_avalon_mm_50mhz_readdatavalid               => CONNECTED_TO_nios_avalon_mm_50mhz_readdatavalid,               --                                          .readdatavalid
			nios_avalon_mm_50mhz_burstcount                  => CONNECTED_TO_nios_avalon_mm_50mhz_burstcount,                  --                                          .burstcount
			nios_avalon_mm_50mhz_writedata                   => CONNECTED_TO_nios_avalon_mm_50mhz_writedata,                   --                                          .writedata
			nios_avalon_mm_50mhz_address                     => CONNECTED_TO_nios_avalon_mm_50mhz_address,                     --                                          .address
			nios_avalon_mm_50mhz_write                       => CONNECTED_TO_nios_avalon_mm_50mhz_write,                       --                                          .write
			nios_avalon_mm_50mhz_read                        => CONNECTED_TO_nios_avalon_mm_50mhz_read,                        --                                          .read
			nios_avalon_mm_50mhz_byteenable                  => CONNECTED_TO_nios_avalon_mm_50mhz_byteenable,                  --                                          .byteenable
			nios_avalon_mm_50mhz_debugaccess                 => CONNECTED_TO_nios_avalon_mm_50mhz_debugaccess,                 --                                          .debugaccess
			pio_button_export                                => CONNECTED_TO_pio_button_export,                                --                                pio_button.export
			pio_button_irq_irq                               => CONNECTED_TO_pio_button_irq_irq,                               --                            pio_button_irq.irq
			pio_dips_export                                  => CONNECTED_TO_pio_dips_export,                                  --                                  pio_dips.export
			pio_leds_export                                  => CONNECTED_TO_pio_leds_export,                                  --                                  pio_leds.export
			reset_reset_n                                    => CONNECTED_TO_reset_reset_n,                                    --                                     reset.reset_n
			sd_clk_export                                    => CONNECTED_TO_sd_clk_export,                                    --                                    sd_clk.export
			sd_spi_cs_n_export                               => CONNECTED_TO_sd_spi_cs_n_export,                               --                               sd_spi_cs_n.export
			sd_spi_miso_export                               => CONNECTED_TO_sd_spi_miso_export,                               --                               sd_spi_miso.export
			sd_spi_mosi_export                               => CONNECTED_TO_sd_spi_mosi_export,                               --                               sd_spi_mosi.export
			uart_0_external_connection_rxd                   => CONNECTED_TO_uart_0_external_connection_rxd,                   --                uart_0_external_connection.rxd
			uart_0_external_connection_txd                   => CONNECTED_TO_uart_0_external_connection_txd,                   --                                          .txd
			uart_0_irq_irq                                   => CONNECTED_TO_uart_0_irq_irq,                                   --                                uart_0_irq.irq
			uart_enabled_word_export                         => CONNECTED_TO_uart_enabled_word_export,                         --                         uart_enabled_word.export
			uart_internal_disable_external_connection_export => CONNECTED_TO_uart_internal_disable_external_connection_export, -- uart_internal_disable_external_connection.export
			uart_internal_enable_external_connection_export  => CONNECTED_TO_uart_internal_enable_external_connection_export,  --  uart_internal_enable_external_connection.export
			uart_is_regfile_external_connection_export       => CONNECTED_TO_uart_is_regfile_external_connection_export        --       uart_is_regfile_external_connection.export
		);

