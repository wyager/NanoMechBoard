#ifndef USB_MASTER_H_
#define USB_MASTER_H_

#include "types.h"

void usb_io_init(void);

void usb_has_master(void);

uint8_t usb_send_updates(const Mapper_state* mapped);


#endif
