#ifndef HARDWARE_H
#define HARDWARE_H

#include "types.h" // Hardware_state, Master_command

void hardware_io_init(Hardware_state* hardware_state);

void hardware_scan(Hardware_state* hardware_state);

void hardware_update(const Master_command* command, Hardware_state* Hardware_state);

void set_pwms(const uint8_t values[5]);

#endif