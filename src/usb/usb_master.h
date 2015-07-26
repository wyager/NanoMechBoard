#ifndef USB_MASTER_H_
#define USB_MASTER_H_

#include "types.h"

void usb_io_init(void);

uint8_t usb_has_connection(void);

void usb_send_updates(const Mapper_state* mapped, Master_command* command);

#endif
