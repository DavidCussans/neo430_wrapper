// #################################################################################################
// #  < Echos text >                                                                               #
// # ********************************************************************************************* #
// # Waits for a a character from UART them echos back.                                            #
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
// #  David Cussans, Bristol, UK                                                       03.03.2018  #
// #################################################################################################


// Libraries
#include <stdint.h>
#include "../../lib/neo430/neo430.h"

// Configuration
#define BAUD_RATE 19200

/* ------------------------------------------------------------
 * INFO Main function
 * ------------------------------------------------------------ */
int main(void) {

  // setup UART
  uart_set_baud(BAUD_RATE);
  USI_CT = (1<<USI_CT_EN);

  // turn off LEDs..
  GPIO_OUT = 0;
  
  // intro text
  _printf("\n\nEcho text - waits for a key then prints value" );
  _printf(".\n"
          "Press any key to start.\n");

  while(1){
    
  char c = uart_getc();
  uart_putc(c);
  uart_br_print("\n");

  // Set bottom 8 bits of GPIO with contents of character.
  GPIO_OUT = c;
  
  }

  
}
