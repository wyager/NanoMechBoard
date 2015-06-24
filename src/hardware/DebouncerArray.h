//  DebouncerArray.h
//  Created by Will Yager on 6/17/13.
//  Copyright (c) 2013 Will Yager. All rights reserved.
//  Used for debouncing signals.

#ifndef __keyboard__DebouncerArray__
#define __keyboard__DebouncerArray__

template <uint8_t sensitivity, uint8_t num_buttons> 
class DebouncerArray {
private:
    //The number of samples that conflict with the current recorded state
    unsigned char count[num_buttons];
    //The current recorded state
    bool state[num_buttons];

    
public:
    //Sensitivity is how long it takes to flip the state
    DebouncerArray():count(),state(){}
    //Update with a state value. Returns debounced state.
    bool update(int element, bool state);
    //Gets the value of an element
    bool get(int element);
};

template <uint8_t sensitivity, uint8_t num_buttons> 
bool DebouncerArray<num_buttons>::update(int element, bool state){
    //Sample reaffirms existing recorded state
    if(this->state[element] == state){
        if(this->count[element] > 0){
            this->count[element] -= 1;
        }
    }
    //Sample conflicts with existing recorded state
    if(this->state[element] != state){
        this->count[element] += 1;
        if(this->count[element] >= sensitivity){
            this->state[element] = !this->state[element];
            this->count[element] = 0;
        }
    }
    return this->state[element];
}

template <uint8_t sensitivity, uint8_t num_buttons> 
bool DebouncerArray<num_buttons>::get(int element){
    return this->state[element];
}

#endif /* defined(__keyboard__DebouncerArray__) */
