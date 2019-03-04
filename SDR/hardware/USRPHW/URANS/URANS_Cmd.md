###  URANS相关命令的使用

###### 1> 常用命令

```bash
  lsusb                   #查看URANS设备是否与电脑相连  
  lsusrp                  #查看gnuradio驱动是否识别URANS
  usrp_probe              #查看URANS板子的相关信息
  usrp_fft.py             #grc的模拟频谱接收模块如：usrp_fft.py –f 900M –R –A
  usrp_benchmark_usb.py   #测试URANS和电脑的USB通信速率
```

###### 2> 重新烧写URANS程序命令

```bash
  #/usr/local/src/gnuradio-3.3.0/usrp/firmware/src/usrp2/burn-usrp4-eeprom
  #/usr/local/src/gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx900_mimo_b -A –f
```

###### 3> URANS频点改写：900M---1800M

```bash
  #/usr/local/src/gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx1800_mimo_b -A –f
```
