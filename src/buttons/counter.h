#ifndef COUNTER_H
#define COUNTER_H

#include "types.h" // Debouncer_state, Counter_state

void count(const uint8_t master_debounced[16],
           const uint8_t slave_debounced[16],
           Counter_state* counter_state);

#endif