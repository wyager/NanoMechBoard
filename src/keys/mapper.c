#include "keys/mapper.h"
#include <inttypes.h>
#include "keys/keylayouts.h"


/*
     Button layouts:

 rockers         rockers   
  12 14           28 30    
  13 15           29 31    
                           
0  1  2  3      16 17 18 19
4  5  6  7      20 21 21 23
8  9  10 11     24 25 26 27
*/

const uint16_t layers[4][21] = {
{KEY_P, KEY_C, KEY_O, KEY_T, KEY_E,    KEY_S, KEY_L,      KEY_H,
 KEY_F, KEY_U, KEY_I, KEY_R, KEY_A,    KEY_N, KEY_D,      KEY_M,
 ALT,   CTRL,                KEY_SPACE,       KEY_DELETE, GUI},

{KEY_ESC, KEY_J, KEY_SLASH, KEY_PERIOD, KEY_COMMA, KEY_BACKSLASH,  KEY_QUOTE,  KEY_Z,
 KEY_X,   KEY_W, KEY_Y,     KEY_G,      KEY_K,     KEY_B,          KEY_V,      KEY_Q,
 ALT,     CTRL,  /*modifier keys*/      KEY_SPACE, /*shift/enter*/ KEY_DELETE, GUI},

{KEY_1,     KEY_2,     KEY_3,          KEY_4,           KEY_5,     KEY_6, KEY_7,         KEY_8,
 KEY_EQUAL, KEY_MINUS, KEY_LEFT_BRACE, KEY_RIGHT_BRACE, KEY_9,     KEY_0, KEY_SEMICOLON, KEY_TILDE,
 ALT,       CTRL,                                       KEY_SPACE,        KEY_DELETE,    GUI},

{KEY_ESC, KEY_Q, KEY_W, KEY_E, KEY_CAPS_LOCK, KEY_UP,     KEY_VOLUME_DOWN, KEY_VOLUME_UP,
 KEY_TAB, KEY_A, KEY_S, KEY_D, KEY_LEFT,      KEY_DOWN,   KEY_RIGHT,       KEY_MEDIA_PLAY_PAUSE,
 ALT,     CTRL,                KEY_SPACE,                 KEY_DELETE,      GUI}};

const uint8_t physical_buttons[21] = {0,  1,  2,  3, 16, 17, 18, 19, 
                                      4,  5,  6,  7, 20, 21, 22, 23,
                                      8,  9,         24,     26, 27};


// Keys that are have different responses for a tap vs. a hold.
// First array subscript is the layer. Second array subscript is the key.
// Third array subscript is the "tap" mode key. Second array subscript is
// the "hold" mode key.
const uint16_t tap_layers[4][1][2] = {
    {{KEY_ENTER, SHIFT}},
    {{KEY_ENTER, SHIFT}},
    {{KEY_ENTER, SHIFT}},
    {{KEY_ENTER, SHIFT}}
};

const uint8_t physical_tap_buttons[1] = {25};

void map_keypresses(const Counter_state* counter_state,
                    Mapper_state* mapper_state){
    // Rocker switches
    const uint8_t rockers[4] = {counter_state->current[12],
                                counter_state->current[14],
                                counter_state->current[28],
                                counter_state->current[30]};

    const uint8_t layer_keys[2] = {counter_state->current[10],
                                   counter_state->current[11]};

    const uint8_t locked = (rockers[1] == 1);
    const uint8_t rocker_selection = (rockers[2] << 1) + rockers[3];
    const uint8_t key_selection = (layer_keys[0] << 1) + layer_keys[1];
    const uint8_t layer = locked ? rocker_selection : key_selection; 


    // All the "standard" keys with no special actions.
    // Just press when the physical button is pressed,
    // and release when the physical button is released.
    // The three non-standard keys are the layer select keys
    // (see "layer_keys" above) and the shift/enter key (handled below)
    for(uint8_t key = 0; key < 21; key++){
        const uint8_t button = physical_buttons[key];
        mapper_state->action[button] = 0; // By default, assume nothing happened.
        if(counter_state->current[button] == 0){ // unpressed
            if(counter_state->unpressed[button] == 1){ // Released just now
                mapper_state->action[button] = -1;
            }
        } else { // pressed
            if(counter_state->pressed[button] == 1){ // Pressed just now
                mapper_state->action[button] = 1;
                mapper_state->last_key[button] = layers[layer][key];
            }
        }
    }

    const uint8_t hold_length = 10;

    for(uint8_t key = 0; key < 1; key++){
        const uint8_t button = physical_tap_buttons[key];
        mapper_state->action[button] = 0;
        if(counter_state->current[button] == 0){ // Unpressed
            if(counter_state->unpressed[button] == 1) { // Released just now
                if(counter_state->pressed[button] >= hold_length){ // It was held
                    mapper_state->action[button] = -1;
                } else { // It was tapped
                    mapper_state->action[button] = -2;
                }
            }
        } else { // Pressed
            if(counter_state->pressed[button] == 1){ // Pressed just now
                mapper_state->last_key[button] = tap_layers[layer][key][0];
            }
            if(counter_state->pressed[button] == hold_length){
                mapper_state->last_key[button] = tap_layers[layer][key][1];
                mapper_state->action[button] = 1;
            }
        }
    }
}