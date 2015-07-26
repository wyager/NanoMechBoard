#ifndef TYPES_H
#define TYPES_H

#include <inttypes.h>

typedef struct {
	// Is the button pressed? 1 for yes, 0 for no.
	uint8_t  buttons[16];
	// Used for managing LED fade patterns
	uint8_t  pwm_indices[5];
	// How many hardware update cycles we've been through
	uint64_t counter;
} Hardware_state;

typedef struct {
	// Counts how long the button has been measured
	// as pressed or released. Negative means released,
	// positive means pressed. The counts saturate.
	int8_t counts[16];
	// The debounced button state. 1 for pressed, 0 for released.
	uint8_t debounced[16];
} Debouncer_state;

// From now on, these structures have to deal with all buttons
// across both keyboards.
typedef struct {
	// How long the button was last in the pressed state
	uint8_t pressed[32];
	// How long the button was last in the released state
	uint8_t unpressed[32];
	// 1 if currently pressed, 0 if currently released.
	uint8_t current[32];
} Counter_state;

typedef struct {
	// When a physical button is pressed, it may correspond to a number of
	// different USB key codes. We need to release the *same* key code,
	// not whichever one the button currently corresponds to. This is also
	// how we tell the master which keys were just pressed (or released).
	uint16_t last_key[32];
	// Set to -1 if *just* released or 1 if *just* pressed.
	// Set to 2 for a fast press-release (i.e. a a tap).
	// Set to 0 if nothing happened.
	int8_t action[32];
} Mapper_state;

typedef struct {
	uint8_t usb_LEDs;
} Master_command;

typedef struct {
	uint8_t is_master;
	uint8_t has_master;
} I2C_context;

#endif