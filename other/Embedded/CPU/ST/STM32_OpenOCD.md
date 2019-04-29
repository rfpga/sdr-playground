# STM32 OpenOCD


###### 0x01 --- STM32 OpenOCD

```

medev@mevm:~/Eclipse/openocd-0.10.0/src$ sudo openocd -f board/stm32l4discovery.cfg
Open On-Chip Debugger 0.10.0
Licensed under GNU GPL v2
For bug reports, read
	http://openocd.org/doc/doxygen/bugs.html
Info : The selected transport took over low-level target control. The results might differ compared to plain JTAG/SWD
adapter speed: 500 kHz
adapter_nsrst_delay: 100
none separate
srst_only separate srst_nogate srst_open_drain connect_deassert_srst
Info : Unable to match requested speed 500 kHz, using 480 kHz
Info : Unable to match requested speed 500 kHz, using 480 kHz
Info : clock speed 480 kHz
Info : STLINK v2 JTAG v28 API v2 SWIM v18 VID 0x0483 PID 0x374B
Info : using stlink api v2
Info : Target voltage: 3.204706
Info : stm32l4x.cpu: hardware has 6 breakpoints, 4 watchpoints


medev@mevm:~$ telnet localhost 4444
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
Open On-Chip Debugger
> reset init
Unable to match requested speed 500 kHz, using 480 kHz
Unable to match requested speed 500 kHz, using 480 kHz
adapter speed: 480 kHz
target halted due to debug-request, current mode: Thread
xPSR: 0x01000000 pc: 0x0802df20 msp: 0x200032b0
adapter speed: 4000 kHz
>> flash write_image erase /home/medev/eclipse-workspace/blinky/Debug/blinky.elf
auto erase enabled
target halted due to breakpoint, current mode: Thread
xPSR: 0x61000000 pc: 0x20000050 msp: 0x20010000
block write succeeded
wrote 4096 bytes from file /home/medev/eclipse-workspace/blinky/Debug/blinky.elf in 0.661248s (6.049 KiB/s)
> reset
Unable to match requested speed 500 kHz, using 480 kHz
Unable to match requested speed 500 kHz, using 480 kHz
adapter speed: 480 kHz
> reg
===== arm v7m registers
(0) r0 (/32)
(1) r1 (/32)
(2) r2 (/32)
(3) r3 (/32)
(4) r4 (/32)
(5) r5 (/32)
(6) r6 (/32)
(7) r7 (/32)
(8) r8 (/32)
(9) r9 (/32)
(10) r10 (/32)
(11) r11 (/32)
(12) r12 (/32)
(13) sp (/32)
(14) lr (/32)
(15) pc (/32)
(16) xPSR (/32)
(17) msp (/32)
(18) psp (/32)
(19) primask (/1)
(20) basepri (/8)
(21) faultmask (/1)
(22) control (/2)
(23) d0 (/64)
(24) d1 (/64)
(25) d2 (/64)
(26) d3 (/64)
(27) d4 (/64)
(28) d5 (/64)
(29) d6 (/64)
(30) d7 (/64)
(31) d8 (/64)
(32) d9 (/64)
(33) d10 (/64)
(34) d11 (/64)
(35) d12 (/64)
(36) d13 (/64)
(37) d14 (/64)
(38) d15 (/64)
(39) fpscr (/32)
===== Cortex-M DWT registers
(40) dwt_ctrl (/32)
(41) dwt_cyccnt (/32)
(42) dwt_0_comp (/32)
(43) dwt_0_mask (/4)
(44) dwt_0_function (/32)
(45) dwt_1_comp (/32)
(46) dwt_1_mask (/4)
(47) dwt_1_function (/32)
(48) dwt_2_comp (/32)
(49) dwt_2_mask (/4)
(50) dwt_2_function (/32)
(51) dwt_3_comp (/32)
(52) dwt_3_mask (/4)
(53) dwt_3_function (/32)
> mdw 0x8000000
0x08000000: 20010000
> reset halt
Unable to match requested speed 500 kHz, using 480 kHz
Unable to match requested speed 500 kHz, using 480 kHz
adapter speed: 480 kHz
target halted due to debug-request, current mode: Thread
xPSR: 0x01000000 pc: 0x080002b8 msp: 0x20010000



```
