library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library neo430;
use neo430.neo430_package.all;

entity neo430_wrapper is

  generic (
    CLOCK_SPEED : natural := 12000000);               -- main clock in Hz
  port (
    clk_i      : in    std_logic;       -- global clock, rising edge
    rst_i      : in    std_logic;       -- global reset, async, active low
    uart_txd_o : out   std_logic;       -- UART from NEO to host
    uart_rxd_i : in    std_logic;       -- from host to NEO UART
    leds       : out   std_logic_vector(3 downto 0);  -- status LEDs
    scl_io     : inout std_logic;       -- I2C clock 
    sda_io     : inout std_logic        -- I2C data to/from NEO
    );

end entity neo430_wrapper;

architecture rtl of neo430_wrapper is

signal s_pio : std_logic_vector(15 downto 0);

begin  -- architecture rtl

  -- -----------------------------------------------------------------------------
  neo430_test_inst : entity work.neo430_top_std_logic
    generic map (
      -- general configuration --
      CLOCK_SPEED => CLOCK_SPEED,       -- main clock in Hz
      IMEM_SIZE   => 4*1024,  -- internal IMEM size in bytes, max 32kB (default=4kB)
      DMEM_SIZE   => 2*1024,  -- internal DMEM size in bytes, max 28kB (default=2kB)
      -- additional configuration --
      USER_CODE   => x"BEAD",           -- custom user code
      -- module configuration --
      -- DADD_USE    => false,  -- implement DADD instruction? (default=true)
      MULDIV_USE  => false,  -- implement multiplier/divider unit? (default=true)
      WB32_USE    => false,              -- implement WB32 unit? (default=true)
      WDT_USE     => false,             -- implement WDT? (default=true)
      GPIO_USE    => true,              -- implement GPIO unit? (default=true)
      TIMER_USE   => false,             -- implement timer? (default=true)
      UART_USE    => true,              -- implement USART? (default=true)
      TWI_USE     => true,  -- implement two wire serial interface? (default=true)
      CRC_USE     => false,             -- implement CRC unit? (default=true)
      PWM_USE     => false,  -- implement PWM controller? (default=true)
      EXIRQ_USE   => false,              -- implement EXIRQ? (default=true)
      SPI_USE     => false, -- implement SPI? (default=true)
      -- boot configuration --
      -- BOOTLD_USE  => true,              -- implement and use bootloader? (default=true)
      -- IMEM_AS_ROM => false              -- implement IMEM as read-only memory? (default=false)
      BOOTLD_USE  => false,  -- implement and use bootloader? (default=true)
      IMEM_AS_ROM => true  -- implement IMEM as read-only memory? (default=false)
      )
    port map (
      -- global control --
      clk_i      => clk_i,              -- global clock, rising edge
      rst_i      => rst_i,              -- global reset, async, low-active
      -- gpio --
      gpio_o     => s_pio,              -- parallel output
      gpio_i     => x"0000",            -- parallel input
      
      -- serial com --
      uart_txd_o => uart_txd_o,         -- UART send data
      uart_rxd_i => uart_rxd_i,         -- UART receive data

      -- SPI
      spi_sclk_o => open,               -- serial clock line
      spi_mosi_o => open,               -- serial data line out
      spi_miso_i => '0',                -- serial data line in
      spi_cs_o   => open,               -- SPI CS 0..5
      
      -- 32-bit wishbone interface --
      -- wb_adr_o   => s_addr,             -- address
      -- wb_dat_i   => std_ulogic_vector(ipbus_rbus.ipb_rdata),  -- read data
      -- wb_dat_o   => s_do,               -- write data
      -- wb_we_o    => ipbus_wbus.ipb_write,                     -- read/write
      -- wb_sel_o   => open,               -- byte enable
      -- wb_stb_o   => ipbus_wbus.ipb_strobe,                    -- strobe
      -- wb_cyc_o   => open,               -- valid cycle
      -- wb_ack_i   => ipbus_rbus.ipb_ack,  -- transfer acknowledge
      
      -- 32-bit wishbone interface --
      wb_adr_o   => open,               -- address
      wb_dat_i   => x"00000000",        -- read data
      wb_dat_o   => open,               -- write data
      wb_we_o    => open,               -- read/write
      wb_sel_o   => open,               -- byte enable
      wb_stb_o   => open,               -- strobe
      wb_cyc_o   => open,               -- valid cycle
      wb_ack_i   => '0',                -- transfer acknowledge

      -- I2C lines
      twi_sda_io => sda_io,             -- twi serial data line
      twi_scl_io => scl_io,              -- twi serial clock line

      -- -- external interrupt --
      ext_irq_i     => ( others => '0'),                 -- external interrupt request line
      ext_ack_o => open  -- external interrupt request acknowledge
      );


  leds <= s_pio(3 downto 0);

  -- ipbus_wbus.ipb_addr  <= std_logic_vector("00" & s_addr(s_addr'left downto 2));  -- Convert the byte addresses from the Neo into Word addresses.
  -- ipbus_wbus.ipb_wdata <= std_logic_vector(s_do);

  -- cmp_i2c_iface : entity work.ipbus_i2c_master
  --   port map(
  --     clk     => clk_i,
  --     rst     => '0',
  --     ipb_in  => ipbus_wbus,
  --     ipb_out => ipbus_rbus,
  --     scl     => uid_scl,
  --     sda_o   => s_sda,
  --     sda_i   => uid_sda
  --     );


end architecture rtl;
