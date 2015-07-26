#include "usb_master.h"
#include "usb_keyboard.h"

void usb_io_init(void){
	usb_init();
}

uint8_t usb_has_connection(void){
	return usb_configured() != 0;
}

void usb_send_updates(const Mapper_state* mapped, Master_command* command){
	for(uint8_t i = 0; i<32; i++){
		if(mapped->action[i] > 0){ // Press or tap
			usb_press(mapped->last_key[i]);
		}
	}
	usb_keyboard_send();
	for(uint8_t i = 0; i<32; i++){
		if(mapped->action[i] == -1 || mapped->action[i] == 2){ // Release or tap
			usb_release(mapped->last_key[i]);
		}
	}
	usb_keyboard_send();
	
	command->usb_LEDs = keyboard_leds;
}
