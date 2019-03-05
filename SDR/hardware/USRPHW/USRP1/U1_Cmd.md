###  U1系列 相关命令的使用

本文基于 **[OpenBTS3.09 52M ISO](https://s3.cn-north-1.amazonaws.com.cn/microembedded/system_mirrors/openbts_v3.09_52M.iso)**

###### 1> 常用命令

```bash
  lsusb                   #查看URAN1设备是否与电脑相连  
  lsusrp                  #查看gnuradio驱动是否识别URAN1
  usrp_probe              #查看URAN1板子的相关信息
  usrp_fft.py             #grc的模拟频谱接收模块如：usrp_fft.py –f 900M –R –A
  usrp_benchmark_usb.py   #测试URAN1和电脑的USB通信速率
```

###### 2> 重新烧写URAN1程序命令

```bash
  #/usr/local/src/gnuradio-3.3.0/usrp/firmware/src/usrp2/burn-usrp4-eeprom
  #/usr/local/src /gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx900_mimo_b -A –f
```

###### 3> URAN1频点改写：900M---1800M

```bash
  #/usr/local/src/gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx1800_mimo_b -A –f
```
