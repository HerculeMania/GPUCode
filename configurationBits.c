// configurationBits.c for PIC18F4431 (8MHz Quartz, HS-PLL, Code Protection enabled)
// Place this file in your project and ensure it is compiled and linked
// Consult PIC18F4431 datasheet, Section 25 and XC8 docs for more info

#include <xc.h>
#include "libraries/pwm/epwm.h"
// Oscillator: HS+PLL (HSPLL)
#pragma config OSC = HSPLL    // High-Speed Oscillator with PLL enabled
#pragma config FCMEN = OFF    // Fail-Safe Clock Monitor disabled
#pragma config IESO = OFF     // Internal/External Oscillator Switchover disabled

// Watchdog Timer
#pragma config PWRTEN = OFF   // Power-up Timer disabled
#pragma config BOREN = OFF    // Brown-out Reset disabled
#pragma config WDTEN = OFF    // Watchdog Timer disabled

// Misc
#pragma config MCLRE = ON     // MCLR Pin enabled
#pragma config STVREN = ON    // Stack Overflow/Underflow Reset enabled
// CONFIG3L
//#pragma config HPOL = OFF // PWMxH outputs active high
//#pragma config LPOL = OFF // PWMxL outputs active high
//#pragma config PWMPIN = ON // PWM module controls PWM pins

// Code Protection
#pragma config CP0 = ON       // Code Protection Block 0 enabled
#pragma config CP1 = ON       // Code Protection Block 1 enabled
#pragma config CP2 = ON       // Code Protection Block 2 enabled
#pragma config CP3 = ON       // Code Protection Block 3 enabled
#pragma config CPB = ON       // Boot Block Code Protection enabled
#pragma config CPD = ON       // Data EEPROM Code Protection enabled

// Write Protection
#pragma config WRT0 = OFF     // Write Protection Block 0 off
#pragma config WRT1 = OFF     // Write Protection Block 1 off
#pragma config WRT2 = OFF     // Write Protection Block 2 off
#pragma config WRT3 = OFF     // Write Protection Block 3 off
#pragma config WRTB = OFF     // Boot Block Write Protection off
#pragma config WRTC = OFF     // Configuration Register Write Protection off
#pragma config WRTD = OFF     // Data EEPROM Write Protection off

// Table Read Protection
#pragma config EBTR0 = OFF    // Table Block 0 Read Protection off
#pragma config EBTR1 = OFF    // Table Block 1 Read Protection off
#pragma config EBTR2 = OFF    // Table Block 2 Read Protection off
#pragma config EBTR3 = OFF    // Table Block 3 Read Protection off
#pragma config EBTRB = OFF    // Boot Block Table Read Protection off
void __interrupt(high_priority) high_isr(void) {
    epwm_isr_handler();
}
// Note: Enable further protection/write options as needed for your application
