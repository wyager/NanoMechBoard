#ifndef TYPES_H
#define TYPES_H

#include <inttypes.h>
#include <avr/io.h>

typedef struct {
	uint8_t usb_LEDs;
} Master_command;

typedef struct {
	uint8_t buttons[16];
} Hardware_state;

#endif