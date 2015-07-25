#include "hardware/hardware.h" // hardware_io_init, hardware_scan, update_hardware
#include "buttons/debouncer.h" // debouncer_init, debounce
#include "buttons/counter.h"
#include "keys/mapper.h"
#include "types.h" // Hardware_state, Debouncer_state, Master_command
#include "usb/usb_keyboard.h"
#include "keys/keylayouts.h"
#include <avr/io.h> 
#include <util/delay.h>


#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))


void type_char(char c){
    (void)c;
    usb_press(KEY_A + c);
    usb_keyboard_send();
    usb_release(KEY_A + c);
    usb_keyboard_send();
}

int main(void)
{
	CPU_PRESCALE(0);
    _delay_ms(5); //Give everything time to power up
    DDRD |= 1<<6;

    
    // I2C_context i2c_context;
    // i2c_io_init(&i2c_context);

    // usb_io_init();
    
    Hardware_state hardware_state = {{0}};
    hardware_io_init(&hardware_state);

    Debouncer_state debouncer_state = {{0},{0}};
    
    Counter_state counter_state = {{0},{0},{0}};

    Mapper_state mapper_state = {{0},{0}};

    // Slave_context slave_context;
    // slave_io_init(&i2c_context);
    uint8_t slave_debounced[16] = {0};

    Master_command master_command = {0};

    (void)master_command;
    (void)slave_debounced;
    (void)mapper_state;
    (void)counter_state;
    (void)debouncer_state;
    
    for(uint8_t i = 0; ; i++){
        for(uint8_t dc = 0; dc < 255; dc++){
            uint8_t dcs[5] = {0};
            dcs[i % 5] = dc;
            set_pwms(dcs);
            _delay_ms(2);
        }        
    }

    // const char* text = "hello";
    // for (int i=0; i<6; i++){
    //     type_char(text[i]-'a');
    //     _delay_ms(20);
    // }
    
    // for(;;){
    //     hardware_scan(&hardware_state);

    //     debounce(&hardware_state, &debouncer_state);

    //     // slave_scan(&slave_debouncer_state);

    //     count(debouncer_state.debounced, &slave_debounced, &counter_state);

    //     if(usb_has_connection()){ // We are connected to a computer

    //         map_keypresses(&counter_state, &mapper_state);

    //         usb_send_updates(&mapper_state, &master_command);

    //         // send_update_to_slave(&slave_context, &command);
    //     }
    //     else if(is_i2c_slave()){ // We are connected to another keyboard

    //     }

    //     hardware_update(&hardware_state, &command);

    // }
    return 0;
}