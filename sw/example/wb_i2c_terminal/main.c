// #################################################################################################
// #  < Wishbone bus explorer >                                                                    #
// # ********************************************************************************************* #
// # Manual access to the registers of modules, which are connected to Wishbone bus. This is also  #
// # a neat example to illustrate the construction of a console-like user interface.               #
// # ********************************************************************************************* #
// # This file is part of the NEO430 Processor project: https://github.com/stnolting/neo430        #
// # Copyright by Stephan Nolting: stnolting@gmail.com                                             #
// #                                                                                               #
// # This source file may be used and distributed without restriction provided that this copyright #
// # statement is not removed from the file and that any derivative work contains the original     #
// # copyright notice and the associated disclaimer.                                               #
// #                                                                                               #
// # This source file is free software; you can redistribute it and/or modify it under the terms   #
// # of the GNU Lesser General Public License as published by the Free Software Foundation,        #
// # either version 3 of the License, or (at your option) any later version.                       #
// #                                                                                               #
// # This source is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;      #
// # without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.     #
// # See the GNU Lesser General Public License for more details.                                   #
// #                                                                                               #
// # You should have received a copy of the GNU Lesser General Public License along with this      #
// # source; if not, download it from https://www.gnu.org/licenses/lgpl-3.0.en.html                #
// # ********************************************************************************************* #
// #  Stephan Nolting, Hannover, Germany                                               06.10.2017  #
// #################################################################################################

// I2C routines modified from I2CuHal.py

// Libraries
#include <stdint.h>
#include <string.h>
#include "../../lib/neo430/neo430.h"
#include <stdbool.h>

// Global variables
uint8_t wb_config = 1;

// Prototypes
void setup_i2c(void);
uint8_t read_i2c_address(uint8_t addr , uint8_t n , uint8_t data[]);
bool checkack();
uint8_t write_i2c_address(uint8_t addr , uint8_t nToWrite , uint8_t data[], bool stop);
void dump_wb(void);
uint32_t hex_str_to_uint32(char *buffer);
void delay(uint32_t n );

#define DEBUG 1
#define DELAYVAL 2048

// Configuration
#define MAX_CMD_LENGTH 16
#define BAUD_RATE 19200

#define MAX_N    16

#define ENABLECORE 0x1 << 7
#define STARTCMD 0x1 << 7
#define STOPCMD  0x1 << 6
#define READCMD  0x1 << 5
#define WRITECMD 0x1 << 4
#define ACK      0x1 << 3
#define INTACK   0x1

#define RECVDACK 0x1 << 7
#define BUSY     0x1 << 6
#define ARBLOST  0x1 << 5
#define INPROGRESS  0x1 << 1
#define INTERRUPT 0x1

// Multiply addresses by 4 to go from byte addresses (Wishbone) to Word addresses (IPBus)
#define ADDR_PRESCALE_LOW 0x0
#define ADDR_PRESCALE_HIGH 0x4
#define ADDR_CTRL 0x8
#define ADDR_DATA 0xC
#define ADDR_CMD_STAT 0x10

// I2C address of EEPROM
#define MYSLAVE 0x64

uint8_t buffer[MAX_N];


/* ------------------------------------------------------------
 * INFO Main function
 * ------------------------------------------------------------ */
int main(void) {

  //uint16_t length = 0;
  char command[MAX_CMD_LENGTH];

  uint8_t wordsToRead = 4;

  // setup UART
  uart_set_baud(BAUD_RATE);
  USI_CT = (1<<USI_CT_EN);

  uart_br_print("\n--------------------------------------\n"
                  "--- I2C/ Wishbone Explorer Terminal --\n"
                  "--------------------------------------\n\n");

  // check if WB unit was synthesized, exit if no WB is available
  if (!(SYS_FEATURES & (1<<SYS_WB32_EN))) {
    uart_br_print("Error! No Wishbone adapter synthesized!");
    return 1;
  }


  // set for 32 bit transfer
  //wb_config = 4;

  for (;;) {

    uart_br_print("\nPress a key to start\n");

    //length = uart_scan(command, MAX_CMD_LENGTH);
    uart_scan(command, MAX_CMD_LENGTH);
    uart_br_print("\n");

     setup_i2c();

     buffer[0] = 0x02;
     buffer[1] = 0x00;
     write_i2c_address(MYSLAVE , 2 , buffer, false );
     read_i2c_address(MYSLAVE , wordsToRead , buffer);

     for (uint8_t i=0; i< wordsToRead; i++){
       uart_br_print("\n");
       uart_print_hex_dword(buffer[i]);

     }

   }
     return 0;
}


bool checkack() {

#ifdef DEBUG
uart_br_print("\nChecking ACK\n");
#endif

  bool inprogress = true;
  bool ack = false;
  uint8_t cmd_stat = 0;
  while (inprogress) {
    delay(DELAYVAL);
    cmd_stat = wishbone_read8(ADDR_CMD_STAT);
    inprogress = (cmd_stat & INPROGRESS) > 0;
    ack = (cmd_stat & RECVDACK) == 0;

#ifdef DEBUG
    uart_print_hex_byte( (uint8_t)ack );
#endif

  }
  return ack;
}

/* ------------------------------------------------------------
 * Delay by looping over "no-op"
 * ------------------------------------------------------------ */
void delay(uint32_t delayVal){
  for (uint32_t i=0;i<delayVal;i++){
    asm volatile ("MOV r3,r3");
  }
}


/* ------------------------------------------------------------
 * INFO Configure Wishbone adapter
 * ------------------------------------------------------------ */
void setup_i2c(void) {

  uint16_t prescale = 0x0400;

  uart_br_print("Setting up I2C core");

// Disable core
  wishbone_write8(ADDR_CTRL, 0);

// Setup prescale
  wishbone_write8(ADDR_PRESCALE_LOW , (prescale & 0x00ff) );
  wishbone_write8(ADDR_PRESCALE_HIGH, (prescale & 0xff00) >> 8);

// Enable core
  wishbone_write8(ADDR_CTRL, ENABLECORE);

  uart_br_print("\nTake SDA low to wake up EEPROM.\n");
  // write zero to SDA to wake up EEPROM
  wishbone_write8(ADDR_DATA , 0x00 );
  //  Set Command Register to 0x90 (write, start)
  wishbone_write8(ADDR_CMD_STAT, STARTCMD | WRITECMD );
  wishbone_write8(ADDR_CMD_STAT, STOPCMD);

  // Delay for at least 100us before proceeding
  delay(1000);

  uart_br_print("\nSetup done.\n");

}


/* ------------------------------------------------------------
 * INFO Read data from Wishbone address
 * ------------------------------------------------------------ */
uint8_t read_i2c_address(uint8_t addr , uint8_t n , uint8_t data[]) {

  //static uint8_t data[MAX_N];

  uint8_t val;
  bool ack;
  addr &= 0x7f;
  addr = addr << 1;
  addr |= 0x1 ; // read bit
  wishbone_write8(ADDR_DATA , addr );
  wishbone_write8(ADDR_CMD_STAT, STARTCMD | WRITECMD );
  ack = checkack(DELAYVAL);
  if (! ack) {
      uart_br_print("\nNo ACK. Sending STOP.\n");
      wishbone_write8(ADDR_CMD_STAT, STOPCMD);
      return 0;
      }

  for (uint8_t i=0; i< n ; i++){

      if (i < (n-1)) {
          wishbone_write8(ADDR_CMD_STAT, READCMD);
        } else {
          wishbone_write8(ADDR_CMD_STAT, READCMD | ACK | STOPCMD); // <--- This tells the slave that it is the last word
        }
      ack = checkack(DELAYVAL);
      uart_br_print("\nACK = ");
      uart_print_hex_byte( (uint8_t) ack );
      uart_br_print("\n");

      val = wishbone_read8(ADDR_DATA);
      data[i] = val & 0xff;
    }

    return n;

}

uint8_t write_i2c_address(uint8_t addr , uint8_t nToWrite , uint8_t data[], bool stop) {

  uart_br_print("\nWriting to I2C.\n");

  uint8_t nwritten = -1;
  uint8_t val;
  bool ack;
  addr &= 0x7f;
  addr = addr << 1;

  // Set transmit register (write operation, LSB=0)
  wishbone_write8(ADDR_DATA , addr );
  //  Set Command Register to 0x90 (write, start)
  wishbone_write8(ADDR_CMD_STAT, STARTCMD | WRITECMD );

  ack = checkack(DELAYVAL);

  if (! ack){
    uart_br_print("\nNo ACK. Sending STOP.\n");
    wishbone_write8(ADDR_CMD_STAT, STOPCMD);
    return nwritten;
  }

  nwritten += 1;

  for ( uint8_t i=0;i<nToWrite; i++){
      val = (data[i]& 0xff);
      //Write slave data
      wishbone_write8(ADDR_DATA , val );
      //Set Command Register to 0x10 (write)
      wishbone_write8(ADDR_CMD_STAT, WRITECMD);
      ack = checkack(DELAYVAL);
      if (!ack){
          wishbone_write8(ADDR_CMD_STAT, STOPCMD);
          return nwritten;
        }
      nwritten += 1;
    }

    if (stop) wishbone_write8(ADDR_CMD_STAT, STOPCMD);

    return nwritten;
}
/*
def write(self, addr, data, stop=True):
    """Write data to the device with the given address."""
    # Start transfer with 7 bit address and write bit (0)
    nwritten = -1
    addr &= 0x7f
    addr = addr << 1
    startcmd = 0x1 << 7
    stopcmd = 0x1 << 6
    writecmd = 0x1 << 4
    #Set transmit register (write operation, LSB=0)
    self.data.write(addr)
    #Set Command Register to 0x90 (write, start)
    self.cmd_stat.write(I2CCore.startcmd | I2CCore.writecmd)
    self.target.dispatch()
    ack = self.delayorcheckack()
    if not ack:
        self.cmd_stat.write(I2CCore.stopcmd)
        self.target.dispatch()
        return nwritten
    nwritten += 1
    for val in data:
        val &= 0xff
        #Write slave memory address
        self.data.write(val)
        #Set Command Register to 0x10 (write)
        self.cmd_stat.write(I2CCore.writecmd)
        self.target.dispatch()
        ack = self.delayorcheckack()
        if not ack:
            self.cmd_stat.write(I2CCore.stopcmd)
            self.target.dispatch()
            return nwritten
        nwritten += 1
    if stop:
        self.cmd_stat.write(I2CCore.stopcmd)
        self.target.dispatch()
    return nwritten

*/

void read_wb_address(void) {

  char buffer[9];

  uart_br_print("Enter hexadecimal target address: 0x");
  uart_scan(buffer, 9); // 8 hex chars for address plus '\0'
  uint32_t address = hex_str_to_uint32(buffer);

  uart_br_print("\nReading from [0x");
  uart_print_hex_dword(address);
  uart_br_print("]... ");

  uint8_t r_data8 = 0;
  uint16_t r_data16 = 0;
  uint32_t r_data32 = 0;

  // perform access
  if (wb_config == 1)
    r_data8 = wishbone_read8(address);
  if (wb_config == 2)
    r_data16 = wishbone_read16(address);
  if (wb_config == 4)
    r_data32 = wishbone_read32(address);

  // print result
  uart_br_print("Read data: 0x");
  if (wb_config == 1)
    uart_print_hex_byte(r_data8);
  if (wb_config == 2)
    uart_print_hex_word(r_data16);
  if (wb_config == 4)
    uart_print_hex_dword(r_data32);
  uart_br_print("\n");
}


/* ------------------------------------------------------------
 * INFO Write data to Wishbone address
 * ------------------------------------------------------------ */
void write_wb_address(void) {

  char buffer[9];

  uart_br_print("Enter hexadecimal target address: 0x");
  uart_scan(buffer, 9); // 8 hex chars for address plus '\0'
  uint32_t address = hex_str_to_uint32(buffer);

  uart_br_print("\nEnter hexadecimal write data: 0x");
  uart_scan(buffer, wb_config*2+1); // get right number of hex chars for data plus '\0'
  uint32_t data = hex_str_to_uint32(buffer);

  uart_br_print("\nWriting '0x");
  uart_print_hex_dword(data);
  uart_br_print("' to [0x");
  uart_print_hex_dword(address);
  uart_br_print("]... ");

  uint8_t w_data8 = (uint8_t)data;
  uint16_t w_data16 = (uint16_t)data;
  uint32_t w_data32 = data;

  // perform access
  if (wb_config == 1)
    wishbone_write8(address, w_data8);
  if (wb_config == 2)
    wishbone_write16(address, w_data16);
  if (wb_config == 4)
    wishbone_write32(address, w_data32);

  uart_br_print("Done.\n");
}


/* ------------------------------------------------------------
 * INFO Dump data from Wishbone address
 * ------------------------------------------------------------ */
void dump_wb(void) {

  char buffer[9];
  uint16_t i = 0;

  uart_br_print("Enter hexadecimal start address: 0x");
  uart_scan(buffer, 9); // 8 hex chars for address plus '\0'
  uint32_t address = hex_str_to_uint32(buffer);

  uart_br_print("\nPress any key to start.\n"
                "You can abort dumping by pressing any key.\n");
  while(!uart_char_received());

  uint8_t r_data8 = 0;
  uint16_t r_data16 = 0;
  uint32_t r_data32 = 0;

  while(1) {
    uart_br_print("0x");
    uart_print_hex_dword(address);
    uart_br_print(":  ");

    uint16_t border = 16 / wb_config;
    for (i=0; i<border; i++) {

      // perform access
      if (wb_config == 1)
        r_data8 = wishbone_read8(address);
      if (wb_config == 2)
        r_data16 = wishbone_read16(address);
      if (wb_config == 4)
        r_data32 = wishbone_read32(address);

      if (wb_config == 1) {
        uart_print_hex_byte(r_data8);
        address += 1;
      }
      else if (wb_config == 2) {
        uart_print_hex_word(r_data16);
        address += 2;
      }
      else {
        uart_print_hex_dword(r_data32);
        address += 4;
      }
      uart_putc(' ');

    }
    uart_br_print("\n");
    if (uart_char_received()) // abort
      return;
  }
}


/* ------------------------------------------------------------
 * INFO Hex-char-string conversion function
 * PARAM String with hex-chars (zero-terminated)
 * not case-sensitive, non-hex chars are treated as '0'
 * RETURN Conversion result (32-bit)
 * ------------------------------------------------------------ */
uint32_t hex_str_to_uint32(char *buffer) {

  uint16_t length = strlen(buffer);
  uint32_t res = 0, d = 0;
  char c = 0;

  while (length--) {
    c = *buffer++;

    if ((c >= '0') && (c <= '9'))
      d = (uint32_t)(c - '0');
    else if ((c >= 'a') && (c <= 'f'))
      d = (uint32_t)((c - 'a') + 10);
    else if ((c >= 'A') && (c <= 'F'))
      d = (uint32_t)((c - 'A') + 10);
    else
      d = 0;

    res = res + (d << (length*4));
  }

  return res;
}
