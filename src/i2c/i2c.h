#ifndef I2C_H_
#define I2C_H_

#include "types.h"

void usb_io_init(void);

void usb_has_master(void);

void usb_press_key(const uint16_t key);

void usb_release_key(const uint16_t key);

uint8_t usb_send_updates(void);

#endif
