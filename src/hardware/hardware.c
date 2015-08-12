#include "hardware.h"
#include <inttypes.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/pgmspace.h>

// map (floor . (*255)) [(sin x)^30 | x <- [0.0, pi/255 .. pi]]
const uint8_t PROGMEM half_sin_curve[256] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,2,2,3,4,5,6,7,9,11,13,15,18,21,25,29,33,38,44,50,56,63,71,79,87,96,106,116,126,136,147,157,168,178,188,198,207,216,224,231,238,243,247,251,253,254,254,253,251,247,243,238,231,224,216,207,198,188,178,168,157,147,136,126,116,106,96,87,79,71,63,56,50,44,38,33,29,25,21,18,15,13,11,9,7,6,5,4,3,2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
// Columns always "grounded" (PORT = 0)
// Columns pull down by setting their DDR to OUT
// Columns stop pulling down by setting their DDR to IN
void cols_init(void){
    DDRF &= ~((1<<0) | (1<<1) | (1<<4) | (1<<5));
    // Column PORT value should never change.
    PORTF &= ~((1<<0) | (1<<1) | (1<<4) | (1<<5)); 
}
// colx_set sets the column to strongly pull down or not.
// It may be confusing, but setting DDR to 1 actually pulls *down*.
void col0_set(uint8_t val){
    if(val == 0) DDRF |= (1 << 5);
    else         DDRF &= ~(1 << 5);
}
void col1_set(uint8_t val){
    if(val == 0) DDRF |= (1 << 4);
    else         DDRF &= ~(1 << 4);
}
void col2_set(uint8_t val){
    if(val == 0) DDRF |= (1 << 1);
    else         DDRF &= ~(1 << 1);
}
void col3_set(uint8_t val){
    if(val == 0) DDRF |= (1 << 0);
    else         DDRF &= ~(1 << 0);
}
void col_set(uint8_t col, uint8_t val){
    if(col == 0) col0_set(val);
    if(col == 1) col1_set(val);
    if(col == 2) col2_set(val);
    if(col == 3) col3_set(val);
}

// Rows always DDR = IN
// Rows pull up by setting their PORT to ON
// Rows stop pulling up by setting their PORT to OFF
void rows_init(void){
    // Row DDR value should never change.
    DDRB &= ~(1<<4);
    DDRF &= ~((1<<6) | (1<<7));
    PORTB &= ~(1<<4);
    PORTF &= ~((1<<6) | (1<<7));
}
// rowy_set sets the row to weakly pull up or not.
void row0_set(uint8_t val){
    if(val == 0) PORTF &= ~(1<<6);
    else         PORTF |= (1<<6);
}
void row1_set(uint8_t val){
    if(val == 0) PORTF &= ~(1<<7);
    else         PORTF |= (1<<7);
}
void row2_set(uint8_t val){
    if(val == 0) PORTB &= ~(1<<4);
    else         PORTB |= (1<<4);
}
void row_set(uint8_t row, uint8_t val){
         if(row == 0) row0_set(val);
    else if(row == 1) row1_set(val);
    else if(row == 2) row2_set(val);
}
uint8_t measure_row(uint8_t row){
         if(row == 0) return !(PINF & (1<<6));
    else if(row == 1) return !(PINF & (1<<7));
    else              return !(PINB & (1<<4));
}

void rockers_init(void){
    DDRB &= ~0x0F;
    PORTB |= 0x0F;
}

/*
     Button layouts:

 rockers         rockers   
  12 14           28 30    
  13 15           29 31    
                           
0  1  2  3      16 17 18 19
4  5  6  7      20 21 21 23
8  9  10 11     24 25 26 27
*/

void hardware_scan(Hardware_state* hardware_state){
    cols_init();
    rows_init();

    //Step 1: Pull row up (Weak)
    //Step 2: Pull column down (Strong)
    //Step 3: Mesure row pin. If low, key is pressed.
    //Step 4: Reset all things to in, low.
    for(uint8_t row = 0; row < 3; row++){
        row_set(row, 1);
        for(uint8_t col = 0; col < 4; col++){
            col_set(col, 0);
            _delay_us(5); //Let signals propogate
            hardware_state->buttons[row*4 + col] = measure_row(row);
            col_set(col, 1);
        }
        row_set(row, 0);
    }

    hardware_state->buttons[12] = !(PINB & (1<<2));
    hardware_state->buttons[13] = !(PINB & (1<<3));
    hardware_state->buttons[14] = !(PINB & (1<<0));
    hardware_state->buttons[15] = !(PINB & (1<<1));
}

void pwm_init(void){
    TCCR1B = 1 << CS10; //Use the full 16MHz clock as a PWM clock source for timer 1.
    //For fast PWM, 8 bit, we want to set WGMn2 and WGMn0.
    TCCR1A = 1 << WGM10;
    TCCR1B |= 1 << WGM12;
    //For fast PWM: to clear on compare match with OCRnx and set at TOP, set COMnx1,
    //where n is timer number and x is channel leter (A/B/C)
    TCCR1A |= 1 << COM1A1;
    TCCR1A |= 1 << COM1B1;


    TCCR0A |= 1 << COM0A1; // Clear OC0A on compare match
    TCCR0A |= (1 << WGM01); // Fast PWM
    TCCR0A |= (1 << WGM00); // Fast PWM
    TCCR0B |= 1 << CS00; // No clock prescaling

    TCCR3A |= 1 << COM3A1; // Clear OC3A on compare match
    TCCR3A |= 1 << WGM30; // fast pwm, 8 bit
    TCCR3B |= 1 << WGM32; // fast pwm, 8 bit
    TCCR3B |= 1 << CS30; // No clock prescaling

    //Use full 16MHz clock source for timer 4
    TCCR4B |= 1 << CS40;
    //To enable fast PWM on timer 4, we have to set PWM4x to 1
    TCCR4C |= 1 << PWM4D;
    TCCR4A |= 1 << PWM4A; // Enable PWM on OC4A
    TCCR4C |= 1 << COM4D1; // Clear OC4D on compare match
    TCCR4A |= 1 << COM4A1; // Clear OC4A on compare match

}

void hardware_io_init(Hardware_state* hardware_state){
    rows_init();
    cols_init();
    rockers_init();
    pwm_init();
    // Rockers
    hardware_state->pwm_indices[3] = 0;
    hardware_state->pwm_indices[4] = 0;
    // Rows
    hardware_state->pwm_indices[0] = 15;
    hardware_state->pwm_indices[1] = 25;
    hardware_state->pwm_indices[2] = 35;
    
}

void set_row2_pwm(uint8_t dc){
    if(dc) DDRB |= (1<<6);
    else DDRB &= ~(1<<6);
    OCR1B = dc;
}

void set_row1_pwm(uint8_t dc){
    if(dc) DDRB |= (1<<5);
    else DDRB &= ~(1<<5);
    OCR1A = dc;
}

void set_row0_pwm(uint8_t dc){
    if(dc) DDRD |= (1<<7);
    else DDRD &= ~(1<<7);
    OCR4D = dc;
}

void set_toggle1_pwm(uint8_t dc){
    if(dc) DDRC |= (1<<6);
    else DDRC &= ~(1<<6);
    OCR3A = dc;
}

void set_toggle2_pwm(uint8_t dc){
    if(dc) DDRC |= (1<<7);
    else DDRC &= ~(1<<7);
    OCR4A = dc;
}

void set_pwms(const uint8_t values[5]){
    set_row0_pwm(values[0]);
    set_row1_pwm(values[1]);
    set_row2_pwm(values[2]);
    set_toggle1_pwm(values[3]);
    set_toggle2_pwm(values[4]);
}

void hardware_update(const Master_command* command, Hardware_state* hardware_state){
    (void)command;
    hardware_state->counter++;
    // PWM stuff
    if((hardware_state->counter & 0xF) == 0xF){
        uint8_t* indices = hardware_state->pwm_indices;
        uint8_t dcs[5] = {0};
        for(uint8_t i = 0; i<5; i++){
            indices[i]++;
            dcs[i] = pgm_read_byte(&half_sin_curve[indices[i]]);
        }
        dcs[0] >>= 3; dcs[1] >>= 3; dcs[2] >>= 3;
        if(!hardware_state->buttons[12]) dcs[3] = 0;
        if(!hardware_state->buttons[14]) dcs[4] = 0;
        set_pwms(dcs);
    }
}
