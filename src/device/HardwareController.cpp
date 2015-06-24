//  HardwareController.cpp
//  Created by Will Yager on 7/3/13.
//  Copyright (c) 2013 Will Yager. All rights reserved.
//  Controls hardware peripherals and sets the LEDs

#include "device/HardwareController.h"
extern "C"{
#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>
}

//For nifty LED fade effects
/*
const uint8_t PROGMEM half_sin_curve[] = {0, 8, 16, 23, 31, 39, 47, 55, 63, 71,\
 78, 86, 93, 101, 108, 115, 122, 129, 136, 143, 149, 156, 162, 168,\
  174, 180, 185, 191, 196, 201, 206, 210, 215, 219, 223, 227, 230,\
   234, 237, 239, 242, 244, 246, 248, 250, 251, 252, 253, 254, 254,\
    255, 254, 254, 253, 252, 251, 250, 248, 246, 244, 242, 239, 237,\
     234, 230, 227, 223, 219, 215, 210, 206, 201, 196, 191, 185, 180,\
      174, 168, 162, 156, 149, 143, 136, 129, 122, 115, 108, 101, 93, \
       86, 78, 71, 63, 55, 47, 39, 31, 23, 16, 8, 0};
*/


//Simply iterates through all PHYSICAL keys and sets its corresponding value 
//in the returned ButtonsState to true if the key is pressed.
ButtonsState HardwareController::update(const MasterCommands& commands, ButtonsState<16>* buttons){

    columns_off_strong();

    // Columns always "grounded" (PORT = 0)
    // Columns pull down by setting their DDR to OUT
    // Columns stop pulling down by setting their DDR to IN

    // Rows always DDR = IN
    // Rows pull up by setting their PORT to ON
    // Rows stop pulling up by setting their PORT to OFF
    reset_columns(); // Can probably lift this out
    set_rows_in();
    set_columns_off(); // Can probably lift this out
    reset_rows(); 
    //Step 1: Pull row up (Weak)
    //Step 2: Pull column down (Strong)
    //Step 3: Mesure row pin. If low, key is pressed.
    //Step 4: Reset all things to in, low.
    #define row_size 3
    #define col_size 4
    unsigned char row;
    unsigned char col;
    for(row = 0; row < row_size; row++){
        pull_up_row(row);
        for(col = 0; col < col_size; col++){
            pull_down_column(col);
            _delay_us(5); //Let signals propogate
            if(measure_row(row) == 0){ //If the row pin is low, the key is pressed
                unsigned char button_number = row*col_size + col;
                result.states[button_number] = true;//Record the button as being pressed
            }//Scanned specific key
            reset_columns();
        }//Scanned all keys in row
        reset_rows();
    }//Scanned all keys

    return result;
}

HardwareController::HardwareController(){
    //Do NOT use Teensy's LED, as PD6 is currently used for
    //measuring a key. Pushing the key will short the pin,
    //which will burn out the pin if it is fully turned
    //on. The LED pin being weakly pulled up is fine.
    
    set_columns_in();
    set_columns_off();
    
    //Rows (0 to 4, bottom to top):
    //    PORTB: 7, 3, 2, 1, 0
    set_rows_in();
    set_rows_off();
    
    //Turn on I2C internal pullups. Not really necessary, since we have external pullups too
    PORTD |= (1<<0) | (1<<1);
    
    //LED 1&2 setup
    TCCR1B = 1 << CS10; //Use the full 16MHz clock as a PWM clock source for timer 1.
    //For fast PWM, 8 bit, we want to set WGMn2 and WGMn0.
    TCCR1A = 1 << WGM10;
    TCCR1B |= 1 << WGM12;
    //For fast PWM: to clear on compare match with OCRnx and set at TOP, set COMnx1,
    //where n is timer number and x is channel leter (A/B/C)
    //Blue led is OC1A (timer 1, channel A)
    TCCR1A |= 1 << COM1A1;
    TCCR1A |= 1 << COM1B1;
    //LED 2 is OCR1A
    //LED 1 is OCR1B
    
    //LED 3 setup
    //Use full 16MHz clock source for timer 4
    TCCR4B = 1 << CS40;
    //To enable fast PWM on timer 4, we have to set PWM4x to 1
    TCCR4C = 1 << PWM4D;
    //Set on match, clear on 0
    TCCR4C |= 1 << COM4D1;
    //Led 3 is OCR4D
}


