//  ButtonDebouncer.h
//  Created by Will Yager on 7/3/13.
//  Copyright (c) 2013 Will Yager. All rights reserved.
//  Responsible for debouncing hardware buttons

#ifndef __keyboard2__ButtonDebouncer__
#define __keyboard2__ButtonDebouncer__

#include "Types.h"
#include "hardware/DebouncerArray.h"

template <uint8_t sensitivity, uint8_t num_buttons> class ButtonDebouncer {
private:
    DebouncerArray<sensitivity, num_buttons> debouncer;
public:
    //The threshold is the number of samples it takes to
    //convince the debouncer that something is true
    ButtonDebouncer():debouncer(){}
    //Debounce raw hardware samples
    void update(const ButtonsState& raw_state, ButtonsState* result);
};

template <uint8_t sensitivity, uint8_t num_buttons>
void ButtonDebouncer<sensitivity, num_buttons>::update(const ButtonsState& raw_state, ButtonsState* result){
    for (uint8_t i = 0; i < num_buttons; i++){
        bool debounced_state = this->debouncer.update(i, raw_state.states[i]);
        result->states[i] = debounced_state;
    }
}


#endif /* defined(__keyboard2__ButtonDebouncer__) */
