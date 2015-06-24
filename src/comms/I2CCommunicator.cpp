//  I2CCommunicator.cpp
//  Created by William Yager on 10/10/13.
//  Copyright (c) 2013 Will Yager. All rights reserved.
//  Communicates over I2C

#include "comms/I2CCommunicator.h"
extern "C"{
#include "device/twi.h"
}

/*********** All nasty I2C stuff is mediated in this file. ***********
********* Data from I2C is put in these here static values. ********/
//Called when the master sends us some data
//The master sends us data either to A)inform us that we are to be a slave
//or B)inform us of data coming from the host (like the state of various
//LEDs (cap lock etc.)) that we can choose to act on.
void interrupt_hander_to_read_i2c_message_from_master(uint8_t* buf,int numBytes);
//Called when the master asks for some data (i.e. keyboard status)
void interrupt_handler_to_respond_to_request_from_I2C_master(void);
//Changed to true if we find an I2C master
volatile bool i2c_master_has_been_found = false;
//The USB LED indicator value;
volatile MasterCommands commands = {};
//The data the slave wants to send over I2C
volatile uint8_t outbox[4] = {};
//Whether the master has picked up our last message
volatile bool outbox_full = false;


void interrupt_hander_to_read_i2c_message_from_master(uint8_t* buf, int numBytes){
    if (numBytes != 4) { //Invalid packet
        return;
    }

    if (buf[0] == 'S') { //Slave init packet
        i2c_master_has_been_found = true;;
        return;
    }

    if (buf[0] == 'L'){ //LED status packet
        commands.led_data = buf[1];
    }
}

void interrupt_handler_to_respond_to_request_from_I2C_master(void){
    twi_transmit(outbox, 4);
    outbox_full = false;
}
/************************ Back to nice C++ **************************/

I2CCommunicator::I2CCommunicator(){
    this->_is_master = false;
    twi_setAddress(1);//Slave address
    twi_attachSlaveTxEvent(interrupt_handler_to_respond_to_request_from_I2C_master);
    twi_attachSlaveRxEvent(interrupt_hander_to_read_i2c_message_from_master);
    twi_init();
}

void I2CCommunicator::become_master(){
    twi_setAddress(0);//Master address
    this->_is_master = true;
    //If we get a response, we have a slave. Otherwise, we don't.
    this->has_slave = this->send({'S',0,0,0});
}

bool I2CCommunicator::send(uint8_t data[4]){
    if(this->_is_master){
        //Slave address, packet pointer, length, wait, send stop bit
        uint8_t result = twi_writeTo(1, data, 4, true, true);
        if(result == 0) return true; //Successful message send to slave
    } else {
        for(uint8_t i=0; i<4; i++) outbox[i] = data[i]; //Put the data in the tx buffer
        outbox_full = true; // So we know when it's been received
        while(outbox_full){}; //Wait for the interrupt to send our data
        return true;
    }
    return false; //Either we are a slave or the message to the slave failed
}

//Only does anything if we're the master. Asks for an update from the slave.
//The slave can send whatever it wants, but a properly programmed slave
//will only send button state data.
void I2CCommunicator::request(uint8_t data[4]){
    //Slave address, buffer pointer, length, send stop
    twi_readFrom(1, data, 4, true);
}

bool I2CCommunicator::is_master(){
    return this->_is_master;
}

bool I2CCommunicator::is_slave(){
    return i2c_master_has_been_found;
}

uint8_t I2CCommunicator::update(){
    KeyPacket events;
    uint8_t i = 0;
    while(key_changes.deltas[i].delta != 0){
        events.add_KeyDelta(key_changes.deltas[i]);
        i++;
        if(events.is_full()){
            this->send_packet(events);
            events.data[0] = 0; //"Emtpy" the packet
        }
    }
    if(!events.is_empty()) this->send_packet(events);
    return LED_status;
}

