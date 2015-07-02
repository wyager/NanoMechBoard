#ifndef TYPES_H
#define TYPES_H

#include <inttypes.h>

typedef struct {
	uint8_t buttons[16];
} Hardware_state;

typedef struct {
	int8_t counts[16]; // Saturating counters
	int8_t debounced[16];
} Debouncer_state;

typedef struct {
	uint8_t pressed[32];
	uint8_t unpressed[32];
	uint8_t current[32];
} Counter_state;

typedef struct {
	uint8_t usb_LEDs;
} Master_command;

#endif