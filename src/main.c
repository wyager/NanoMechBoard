#include "hardware/hardware.h" // hardware_io_init, hardware_scan, update_hardware
#include "types.h" // Hardware_state, Master_command
#include "usb/usb_keyboard.h"
#include "usb/keylayouts.h"
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

    usb_init();
    while(!usb_configured()){};
    
    // I2C_context i2c_context;
    // i2c_io_init(&i2c_context);

    // USB_context usb_context;
    // usb_io_init(&usb_context);
    
    Hardware_state hardware_state = {{0}};
    hardware_io_init(&hardware_state);

    // Debouncer_state debouncer_state;
    // debouncer_init(&debouncer_state);
    
    // Button_counter button_counter;
    // counter_init(&button_counter);

    // Keys_delta keys_delta;
    // keys_delta_init(&keys_delta);

    // Master_context master_context;
    // master_io_init(&i2c_context, &usb_context, &master_context);
    Master_command command = {0};

    // Slave_context slave_context;
    // slave_io_init(&i2c_context);
    // Debouncer_state slave_debouncer_state;

    
    
    const char* text = "hello";
    for (int i=0; i<6; i++){
        type_char(text[i]-'a');
        _delay_ms(20);
    }
    
    

    for(;;){
        hardware_scan(&hardware_state);

        for(int i=0; i<16; i++){
            if ( hardware_state.buttons[i] != 0 ) type_char(i);
        }
        // debounce(&hardware_state, &debouncer_state);

        // slave_scan(&slave_debouncer_state);

        // count(&debouncer_state, &slave_debouncer_state, &button_counter)

        // map_keypresses(&button_counter, &keys_delta);

        // send_update_to_master(&master_context, &keys_delta, &commands);

        // send_update_to_slave(&slave_context, &command);

        hardware_update(&hardware_state, &command);

    }
    return 0;
}