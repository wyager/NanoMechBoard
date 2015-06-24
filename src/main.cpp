#include <inttypes.h>
#include "hardware/ButtonDebouncer.h"
#include "hardware/ButtonDeltaDetector.h"
#include "device/HardwareController.h"
#include "comms/MasterNotifier.h"
#include "comms/SlaveNotifier.h"
#include "comms/I2CCommunicator.h"
#include "comms/USBCommunicator.h"
#include "keys/KeyMapper.h"
extern "C"{
#include <avr/io.h> 
#include <util/delay.h>
}

#define CPU_PRESCALE(n) (CLKPR = 0x80, CLKPR = (n))

int main()
{
	CPU_PRESCALE(0);
    _delay_ms(5); //Give everything time to power up
    
    I2CCommunicator i2c_communicator; //Start I2C in slave mode
    USBCommunicator usb_communicator; //Start USB hardware
    
    //Manages hardware functions, including scanning keys. Constructor configures hardware.
    HardwareController      hardware;
    ButtonsState<16>        raw_state;
    //Manages debouncing buttons.
    //The first template argument is the sensitivity. Lower number = flips faster.
    //The second template argument is the number of buttons.
    ButtonDebouncer<3,16>   debouncer;
    ButtonsState<16>        debounced_state;
    //Counts how long a button has been in a state and its previous state
    ButtonCounter           counter;
    ButtonsCounts           counts;
    //Maps physical button deltas to USB key deltas. This is where to look if you want to change the key layout.
    KeyMapper               key_mapper;
    KeysDelta               key_changes;
    //Talks to the computer over USB or the masterboard over I2C. Constructor hangs until a master is found (either USB or I2C)
    MasterNotifier          master(usb_communicator, i2c_communicator);
    MasterCommands          master_commands;
    //Represents the slave, if one exists. Acts as a dummy slave otherwise. Tries to connect to slave during construction.
    SlaveNotifier           slave(i2c_communicator);
    ButtonsState            debounced_slave_state;
    
    
    
    
    

    for(;;){
        hardware.update(master_commands, &raw_state);
        debouncer.update(raw_state, &debounced_state);

        slave.update(debounced_slave_state);

        counter.update(debounced_state, debounced_slave_state, &counts)

        key_mapper.resolve(counts, &key_changes);

        master.notify(key_changes, &master_commands); 
    }
    return 0;
}