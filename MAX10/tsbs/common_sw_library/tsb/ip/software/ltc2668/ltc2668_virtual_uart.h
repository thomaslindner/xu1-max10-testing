/*
 * ltc2668_virtual_uart.h
 *
 *  Created on: Feb 7, 2014
 *      Author: yairlinn
 */

#ifndef LTC2668_VIRTUAL_UART_H_
#define LTC2668_VIRTUAL_UART_H_

#include "virtual_uart_register_file.h"
#include "ltc2668_driver.h"

class ltc2668_virtual_uart: public virtual_uart_register_file,
		public ltc2668_driver
{
protected:
  register_desc_map_type default_register_descriptions;

public:
	ltc2668_virtual_uart();
	virtual unsigned long long read_control_reg(unsigned long address, unsigned long secondary_uart_address = 0, int* errorptr = NULL);
    virtual void write_control_reg(unsigned long address, unsigned long long data, unsigned long secondary_uart_address = 0, int* errorptr = NULL);

};

#endif /* LTC2668_VIRTUAL_UART_H_ */