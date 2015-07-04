#ifndef MAPPER_H
#define MAPPER_H

#include "types.h" // Counter_state, Mapper_state

void map_keypresses(const Counter_state* counter_state,
	                Mapper_state* mapper_state);

#endif