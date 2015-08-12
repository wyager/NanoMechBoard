#include "buttons/counter.h"
#include <inttypes.h>

const uint8_t max = 255;

void count(const uint8_t master_debounced[16],
           const uint8_t slave_debounced[16],
           Counter_state* counter_state){
    for(uint8_t button = 0; button<16; button++){
        if(slave_debounced[button] == counter_state->current[button]){
        	if(counter_state->current[button] == 1){ // Pressed
        		if(counter_state->pressed[button] < max) counter_state->pressed[button]++;
        	} else {
        		if(counter_state->unpressed[button] < max) counter_state->unpressed[button]++;
        	}
        } else {
        	if(slave_debounced[button] == 1){ // Pressed
        		counter_state->pressed[button] = 1;
        	} else {
        		counter_state->unpressed[button] = 1;
        	}
        	counter_state->current[button] = slave_debounced[button];
        }
    }


    for(uint8_t button = 16; button<32; button++){
        if(master_debounced[button-16] == counter_state->current[button]){
        	if(counter_state->current[button] == 1){ // Pressed
        		if(counter_state->pressed[button] < max) counter_state->pressed[button]++;
        	} else {
        		if(counter_state->unpressed[button] < max) counter_state->unpressed[button]++;
        	}
        } else {
        	if(master_debounced[button-16] == 1){ // Pressed
        		counter_state->pressed[button] = 1;
        	} else {
        		counter_state->unpressed[button] = 1;
        	}
        	counter_state->current[button] = master_debounced[button-16];
        }
    }
}