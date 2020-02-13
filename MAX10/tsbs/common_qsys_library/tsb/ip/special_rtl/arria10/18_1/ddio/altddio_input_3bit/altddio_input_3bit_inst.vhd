	component altddio_input_3bit is
		port (
			ck     : in  std_logic                    := 'X';             -- export
			dout   : out std_logic_vector(7 downto 0);                    -- export
			pad_in : in  std_logic_vector(3 downto 0) := (others => 'X')  -- export
		);
	end component altddio_input_3bit;

	u0 : component altddio_input_3bit
		port map (
			ck     => CONNECTED_TO_ck,     --     ck.export
			dout   => CONNECTED_TO_dout,   --   dout.export
			pad_in => CONNECTED_TO_pad_in  -- pad_in.export
		);
