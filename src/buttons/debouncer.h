#ifndef DEBOUNCER_H
#define DEBOUNCER_H

#include "types.h" // Hardware_state, Debouncer_state

void debounce(const Hardware_state* hardware_state, Debouncer_state* debouncer_state);

#endif