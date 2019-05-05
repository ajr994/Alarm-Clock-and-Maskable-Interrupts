# Alarm-Clock-and-Maskable-Interrupts
Assembly language program for an alarm clock

  This program was written for and tested on the 68HC12 microprocessor where the concepts of real time interrupt mechanisms and how to implement them on the 68HC12 microprocessor were displayed.  This project also helps show an understanding of the difference between maskable and non-maskable interrupts, focusing on how they affect the microprocessor. Using real time interrupts and the internal clock of the microprocessor it is possible to implement more efficient programming techniques. 

  The goal of this project was to design and program a silent alarm for an alarm clock by using interrupts.  An interrupt occurs every 8.129ms, meaning 122 times to create a clock that increases every one second. This one second updates the program and displays the new time for every second that the clock is on. When the clock reaches the chosen alarm time an LED will light up and the clock will continue until the microprocessor is reset. To turn off the alarm any key on the keyboard can be pressed to interrupt program.   
