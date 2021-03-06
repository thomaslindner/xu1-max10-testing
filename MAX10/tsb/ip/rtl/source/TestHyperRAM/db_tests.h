/*
 * db_tests.h
 *
 *  Created on: 05/02/2017
 */

#ifndef DB_TESTS_H_
#define DB_TESTS_H_

int db_tests_single_data_bit_test(unsigned long base, int use_printf);
int db_tests_byte_enable_test(unsigned long base, int use_printf);
int db_tests_read_write_span_accessibility_test(unsigned long base, unsigned long span, int use_printf);

// This HyperFlash code cannot execute successfully from Flash.
// Therefore run this from the .exceptions  segment which is mapped to on-chip SRAM.
//
int db_tests_hypermax_check_cfi( unsigned long base, int use_printf ) __attribute__ ((section (".exceptions")));


#endif /* DB_TESTS_H_ */



/*
*  DISCLAIMER:
*
*      THIS SOFTWARE, SOURCE CODE AND ASSOCIATED MATERIALS INCLUDING BUT NOT LIMITED TO TUTORIALS,
*      GUIDES AND COMMENTARY PROVIDED WITH THIS EXERCISE ARE ONLY DESIGNED FOR REFERENCE PURPOSES
*      TO GIVE AN EXAMPLE TO LICENSEE FOR THEIR OWN NECESSARY DEVELOPMENT OF THEIR OWN SOFTWARE AND/OR
*      APPLICATION. IT IS NOT DESIGNED FOR ANY SPECIAL PURPOSE, SERIAL PRODUCTION OR USE IN MEDICAL,
*      MILITARY, AIR CRAFT, AVIATION, SPACE OF LIFE SUPPORT EQUIPMENT.
*
*      TO THE EXTENT PERMITTED BY LAW, THE EXERCISE SOFTWARE AND/OR SOURCE CODE AND/OR AND ASSOCIATED
*      MATERIALS IS PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND AND ONLY FOR REFERENCE PURPOSES.
*
*      SYNAPTIC LABORATORIES LTD. MAKES NO WARRANTIES, EITHER EXPRESS OR IMPLIED, WITH RESPECT TO THE
*      LICENSED SOFTWARE AND/OR SOURCE CODE AND/OR ASSOCIATED MATERIALS, CONFIDENTIAL INFORMATION AND
*      DOCUMENTATION PROVIDED HEREUNDER. 
*
*      SYNAPTIC LABORATORIES LTD. SPECIFICALLY DISCLAIMS THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
*      FITNESS FOR A PARTICULAR PURPOSE AND ANY WARRANTY AGAINST INFRINGEMENT OF ANY INTELLECTUAL
*      PROPERTY RIGHT OF ANY THIRD PARTY WITH REGARD TO THE SOFTWARE, DOCUMENTATION (SCHEMATICS ETC.),
*      SOURCE CODE AND ASSOCIATED MATERIALS, CONFIDENTIAL INFORMATION AND DOCUMENTATION.
*
*      ANY USE, COMPILATION AND TESTING OF THE SOFTWARE AND/OR SOURCE CODE IS AT LICENSEE`S OWN RISK
*      AND LICENSEE IS OBLIGED TO CONDUCT EXTENSIVE TESTS TO AVOID ANY ERRORS AND FAILURE IN THE
*      COMPILED SOURCE CODE, DOCUMENTATION (SCHEMATICS ETC.) AND THE HEREFROM GENERATED SOFTWARE
*      OF LICENSEE.
*
*      EXCEPT FOR WILFULL INTENT SYNAPTIC LABORATORIES LTD. SHALL IN NO EVENT BE ENTITLED TO OR LIABLE
*      FOR ANY INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES OF ANY KIND OR NATURE, INCLUDING,
*      WITHOUT LIMITATION, BUSINESS INTERRUPTION COSTS, LOSS OF PROFIT OR REVENUE, LOSS OF DATA,
*      PROMOTIONAL OR MANUFACTURING EXPENSES, OVERHEAD, COSTS OR EXPENSES ASSOCIATED WITH WARRANTY
*      OR INTELLECTUAL PROPERTY INFRINGEMENT CLAIMS, INJURY TO REPUTATION OR LOSS OF CUSTOMERS.
*
*/