--=============================================================================
--! @file top_digilent_cmod_a7.vhd
--=============================================================================
--
-------------------------------------------------------------------------------
-- --
-- University of Bristol, High Energy Physics Group.
-- --
------------------------------------------------------------------------------- --
--
--! @brief Toplevel for Digilent CMOD A7 connected to pc062a \n
--! \n
--
--! @author David Cussans , David.Cussans@bristol.ac.uk 
--
--! @date Jan 2020
--
--! @version v0.1
--
--! @details
--!
--!
--! <b>Dependencies:</b>\n
--!
--! <b>References:</b>\n
--!
--! <b>Modified by:</b>\n
--! Author: 
-------------------------------------------------------------------------------
--! \n\n<b>Last changes:</b>\n
-------------------------------------------------------------------------------
--! @todo <next thing to do> \n
--! <another thing to do> \n
--
--------------------------------------------------------------------------------
--
--
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY topLevel IS
   GENERIC( 
      G_NUM_INPUTS   : natural := 8;      --number of trigger inputs
      G_NUM_LEDS     : natural := 9;
      G_NUM_CTR_BITS : natural := 20;
      g_TIMEWIDTH    : natural := 16      --! Number of bits in dead-time counter
   );
   PORT( 
      btn             : IN     std_logic_vector (1 DOWNTO 0);
      spi_tft_miso    : IN     std_logic;
      sysclk          : IN     std_logic;                                   -- 12 MHz
      trig_in_n       : IN     std_logic_vector (G_NUM_INPUTS-1 DOWNTO 0);  -- Negative half of LVDS inputs
      trig_in_p       : IN     std_logic_vector (G_NUM_INPUTS-1 DOWNTO 0);  -- positive side of LVDS
      uart_txd_in     : IN     std_logic;                                   -- data transmitted from host
      external_led    : OUT    std_logic_vector (8 DOWNTO 0);
      i2c_scl         : OUT    std_logic;
      internal_led    : OUT    std_logic_vector (1 DOWNTO 0);               -- single colour LEDs
      internal_led0_b : OUT    std_logic;
      internal_led0_g : OUT    std_logic;
      internal_led0_r : OUT    std_logic;
      rst             : OUT    std_logic;
      spi_card_csn    : OUT    std_logic;
      spi_tft_clk     : OUT    std_logic;
      spi_tft_csn     : OUT    std_logic;
      spi_tft_mosi    : OUT    std_logic;
      tft_irq         : OUT    std_logic;
      tft_scl         : OUT    std_logic;
      trig_out        : OUT    std_logic_vector (1 DOWNTO 0);
      uart_rxd_out    : OUT    std_logic;                                   -- data received by  host
      i2c_sda         : INOUT  std_logic;
      tft_sda         : INOUT  std_logic
   );

-- Declarations

END ENTITY topLevel ;

architecture rtl of topLevel is

begin  -- architecture rtl

  
cmp_neo430: entity work.neo430_wrapper
  generic map(
    CLOCK_SPEED => 12000000)              -- main clock in Hz
  port (
    clk_i      => sysclk, -- global clock, rising edge
    rst_i      => '1',    -- global reset, async, active low
    uart_txd_o => uart_rxd_out,   -- UART from NEO to host
    uart_rxd_i => uart_txd_in     -- from host to NEO UART
    leds       => s_leds,
    scl_io     => i2c_scl,
    sda_io     => i2c_sda
    );
  
end architecture rtl;
