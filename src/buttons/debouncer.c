#include "buttons/debouncer.h"
#include <inttypes.h>

const int8_t saturation = 100;

void debounce(const Hardware_state* hardware_state, Debouncer_state* debouncer_state){
    for(uint8_t button = 0; button < 16; button++){
        if (hardware_state->buttons[button] == 0){
            debouncer_state->counts[button]--;
            if (debouncer_state->counts[button] < -saturation) {
                debouncer_state->counts[button] = -saturation;
                debouncer_state->debounced[button] = 0;
            }
        }
        else {
            debouncer_state->counts[button]++;
            if (debouncer_state->counts[button] > saturation) {
                debouncer_state->counts[button] = saturation;
                debouncer_state->debounced[button] = 1;
            } 
        }
    }
}