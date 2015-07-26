#ifndef I2C_H_
#define I2C_H_

#include "types.h"

void i2c_io_init(void);

void i2c_scan_slave(uint8_t debounced[16]);

uint8_t is_i2c_slave(void);



uint8_t i2c_look_for_slave(void);

void i2c_update_master(const uint8_t debounced[16], Master_command* command);

void i2c_update_slave(const Master_command* command);

#endif
