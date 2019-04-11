# SPI

###
SPI协议概括
SPI的通信原理很简单，它以主从方式工作，这种模式通常有一个主设备和一个或多个从设备，需要至少4根线，事实上3根也可以（单向传输时）。也是所有基于SPI的设备共有的，它们是SDI（数据输入）、SDO（数据输出）、SCLK（时钟）、CS（片选）。
（1）SDI – SerialData In,串行数据输入；
（2）SDO – SerialDataOut,串行数据输出；
（3）SCLK – Serial Clock,时钟信号，由主设备产生；
（4）CS – Chip Select,从设备使能信号，由主设备控制。
