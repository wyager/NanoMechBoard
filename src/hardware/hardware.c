#include "hardware.h"
#include <inttypes.h>
#include <util/delay.h>


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
    if(val == 0) DDRF |= (1 << 0);
    else         DDRF &= ~(1 << 0);
}
void col1_set(uint8_t val){
    if(val == 0) DDRF |= (1 << 1);
    else         DDRF &= ~(1 << 1);
}
void col2_set(uint8_t val){
    if(val == 0) DDRF |= (1 << 4);
    else         DDRF &= ~(1 << 4);
}
void col3_set(uint8_t val){
    if(val == 0) DDRF |= (1 << 5);
    else         DDRF &= ~(1 << 5);
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
    DDRD &= ~(1<<7);
    DDRB &= ~((1<<5) | (1<<6));
    PORTD &= ~(1<<7);
    PORTB &= ~((1<<5) | (1<<6));
}
// rowy_set sets the row to weakly pull up or not.
void row0_set(uint8_t val){
    if(val == 0) PORTD &= ~(1<<7);
    else         PORTD |= (1<<7);
}
void row1_set(uint8_t val){
    if(val == 0) PORTB &= ~(1<<5);
    else         PORTB |= (1<<5);
}
void row2_set(uint8_t val){
    if(val == 0) PORTB &= ~(1<<6);
    else         PORTB |= (1<<6);
}
void row_set(uint8_t row, uint8_t val){
         if(row == 0) row0_set(val);
    else if(row == 1) row1_set(val);
    else if(row == 2) row2_set(val);
}
uint8_t measure_row(uint8_t row){
         if(row == 0) return !(PIND & (1<<7));
    else if(row == 1) return !(PINB & (1<<5));
    else              return !(PINB & (1<<6));
}

void rockers_init(void){
    DDRB &= ~0x0F;
    PORTB |= 0x0F;
}

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

    hardware_state->buttons[12] = !(PINB & (1<<0));
    hardware_state->buttons[13] = !(PINB & (1<<1));
    hardware_state->buttons[14] = !(PINB & (1<<2));
    hardware_state->buttons[15] = !(PINB & (1<<3));
}

void hardware_update(Hardware_state* hardware_state, const Master_command* command){
    (void)hardware_state;
    (void)command;
}

void hardware_io_init(Hardware_state* hardware_state){
    rows_init();
    cols_init();
    rockers_init();
    (void)hardware_state;
    // Set up all registers and such
    // *hardware_state = {};
}
