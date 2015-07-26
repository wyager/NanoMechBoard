#include "hardware/hardware.h" // hardware_io_init, hardware_scan, update_hardware
#include "buttons/debouncer.h" // debouncer_init, debounce
#include "buttons/counter.h"
#include "keys/mapper.h"
#include "types.h" // Hardware_state, Debouncer_state, Master_command
#include "usb/usb_keyboard.h"
#include "usb/usb_master.h"
#include "i2c/i2c.h"
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

    i2c_io_init();
    uint8_t has_i2c_slave = i2c_look_for_slave();
    uint8_t slave_debounced_state[16] = {0};

    usb_io_init();
    
    Hardware_state hardware_state = {{0}};
    hardware_io_init(&hardware_state);

    Debouncer_state debouncer_state = {{0},{0}};
    
    Counter_state counter_state = {{0},{0},{0}};

    Mapper_state mapper_state = {{0},{0}}; 

    Master_command master_command = {0};
    
    for(;;){
        hardware_scan(&hardware_state);

        debounce(&hardware_state, &debouncer_state);

        if(usb_has_connection()){ // We are connected to a computer

            if(has_i2c_slave) i2c_scan_slave(slave_debounced_state);

            count(debouncer_state.debounced, slave_debounced_state, &counter_state);

            map_keypresses(&counter_state, &mapper_state);

            usb_send_updates(&mapper_state, &master_command);

            i2c_update_slave(&master_command);

        }
        else if(is_i2c_slave()){ // We are connected to another keyboard

            i2c_update_master(debouncer_state.debounced, &master_command);

        }

        hardware_update(&master_command);

    }
    return 0;
}