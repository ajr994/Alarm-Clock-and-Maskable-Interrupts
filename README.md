# Maskable-Interrupts-Alarm-Clock
Assembly language program for an alarm clock using interrupts

   This program was written for and tested on the 68HC12 microprocessor where the concepts of Real Time Interrupt mechanisms and how to implement them on the 68HC12 microprocessor were displayed.  This project also helps show an understanding of the difference between maskable and non-maskable interrupts, focusing on how they affect the microprocessor. Using Real Time Interrupts and the internal clock of the microprocessor it is possible to implement more efficient programming techniques. 

   The goal of this project was to design and program a silent alarm for an alarm clock through the implementation of interrupts.  An interrupt will occur every 8.129ms, meaning 122 times to create a clock that increases every one second. This one second updates the program and displays the new time for every second that the clock is on. When the clock reaches the chosen alarm time an LED will light up and the clock will continue until the microprocessor is reset. To turn off the alarm any key on the keyboard can be pressed to interrupt program.  
  
   During reset both maskable and non-maskable interrupts are turned off. Non-maskable interrupts are enabled during the processer initialization sequence by making the X-bit a zero. Once enabled, non-maskable interrupts cannot be disabled by the user. Maskable interrupts are implemented by the user by clearing the I-bit. A common command to do this is the clear I or CLI command. If the user sets the I-bit to logic 1, the interrupt is then turned off. An easy command to do this is SEI.
    
   Subroutines only store the return address on the top of stack where as an interrupt service routine (ISR) will store the return address and all the info in the CPU registers along with the CCR.  
    
    Benefits:

   The RTI is more accurate since it is dependent on the clock. A software timer is dependent on the execution time of instructions which can vary depending on which instruction is implemented. For example, an interrupt causes the timer to suspend until the interrupt is complete.
    
   It is more efficient and effective to use interrupts and RTIs for better programming practices. Interrupts are more efficient than subroutines because they store the return address and CPU of the processor, while subroutines only store the return address. RTIs are more accurate with respect to time compared to software interupts which are subject to change for many more reasons and hence less reliable.   
