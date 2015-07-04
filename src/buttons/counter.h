#ifndef COUNTER_H
#define COUNTER_H

#include "types.h" // Debouncer_state, Counter_state

void count(const Debouncer_state* master_debouncer,
		   const Debouncer_state* slave_debouncer,
		   Counter_state* counter_state);

#endif