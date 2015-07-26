/*********** All nasty I2C stuff is mediated in this file. ***********
********* Data from I2C is put in these here static values. ********/
//Changed to true if we find an I2C master
volatile uint8_t i2c_master_has_been_found = false;
//The USB LED indicator value;
volatile uint8_t LED_status = 0;
//The data the slave wants to send over I2C
volatile uint8_t outbox[4] = {0};
//Set to true when something is to be sent. Set to false when it is sent.
volatile uint8_t outbox_full = false;

//Called when the master sends us some data
//The master sends us data either to A)inform us that we are to be a slave
//or B)inform us of data coming from the host (like the state of various
//LEDs (cap lock etc.)) that we can choose to act on.
void interrupt_hander_to_read_i2c_message_from_master(uint8_t* buf, int numBytes){
    if (numBytes != 4) { //Invalid packet
        return;
    }

    if (buf[0] == 'S') { //Slave init packet
        i2c_master_has_been_found = true;;
        return;
    }

    if (buf[0] == 'L'){ //LED status packet
        LED_status = buf[1];
    }
}

// Called when the master asks for some data (i.e. keyboard status)
void interrupt_handler_to_respond_to_request_from_I2C_master(void){
    if(outbox_full){
        twi_transmit(outbox, 4);
    } else {
        uint8_t zeros[4] = {0};
        twi_transmit(zeros, 4);
    }
    outbox_full = false;
}
/************************ Back to nice code **************************/

void i2c_io_init(void){
    twi_setAddress(1);//Slave address
    twi_attachSlaveTxEvent(interrupt_handler_to_respond_to_request_from_I2C_master);
    twi_attachSlaveRxEvent(interrupt_hander_to_read_i2c_message_from_master);
    twi_init();
}

void i2c_look_for_slave(void){
    twi_setAddress(0);//Master address
    //If we get a response, we have a slave. Otherwise, we don't.
    return i2c_send_to_slave({'S', 0, 0, 0})
}

void i2c_send_to_master(const uint8_t data[4]){
    memcpy(outbox, data, 4);
    outbox_full = true; //Tell the interrupt to send our data
    while(outbox_full){}; //Wait for the interrupt to send our data
}

bool i2c_send_to_slave(const uint8_t data[4]){
	//Slave address, packet pointer, length, wait, send stop bit
    uint8_t result = twi_writeTo(1, data, 4, true, true);
    if(result == 0) return true; //Successful message send to slave
    else return false;
}

void i2c_read_from_slave(uint8_t data[4]){
    twi_readFrom(1, data, 4, true);
}

uint8_t i2c_has_master(void){
    return i2c_master_has_been_found;
}

void i2c_update_master(const uint8_t debounced[16], Master_command* command)){
	uint16_t pressed = 0;
    for(uint8_t i = 0; i<16; i++){
    	if(debounced[i] == 1){
    		pressed |= (1 << i);
    	}
    }
    i2c_send({pressed >> 8, pressed & 0xFF, 0, 0});
    command->usb_LEDs = LED_status;
}

