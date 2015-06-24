//  BoolArray.h
//  Created by Will Yager on 6/20/13.
//  Copyright (c) 2013 Will Yager. All rights reserved.

#ifndef __keyboard2__Types__
#define __keyboard2__Types__

#include <inttypes.h>

//Holds information for up to 32 buttons
template <size_t buttons> struct ButtonsState{
    bool states[buttons];
};
//Tells us whether a key (from USB spec) has changed state
struct KeyDelta{
    //USB keycodes
    uint16_t key;
    //-1 for released, 1 for pressed, 0 for no change
    int8_t delta : 2;
    //1 if the key was depressed while alt was held down
    uint8_t pushed_during_alt : 1;
};
//Tells us whether a bunch of keys (from USB spec) has changed state
struct KeysDelta{
    KeyDelta deltas[64];
};
// Contains command data from the master
struct MasterCommands{
    uint8_t led_data;
};

#endif /* defined(__keyboard2__Types__) */
