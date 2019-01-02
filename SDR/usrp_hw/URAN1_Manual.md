URAN1# URAN1 使用手册



### 产品特征：

* 一个收发器卡槽

* SC16样品模式 - RX和TX：16bit的采样可达到8MHz的射频带宽

* SC8采样模式 – RX： 8bit的采样可达到16MHz的射频带宽

* USB 2.0 高速连接

* 低成本解决方案

* FPGA：Altera Cyclone

* ADCs: 12-位64 MS/s

* DACs: 14-位128 MS/s

### 运行环境

* URAN1系统镜像
[openbts_v3.09_52M.iso](https://s3.cn-north-1.amazonaws.com.cn/microembedded/system_mirrors/openbts_v3.09_52M.iso) (此映像详细说明)

* URAN1系统安装测试

### 相关命令

###### 常用命令

```
lsusb                   //查看URAN1设备是否与电脑相连  

lsusrp                 //查看gnuradio驱动是否识别URAN1

usrp_probe             //查看URAN1板子的相关信息

usrp_fft.py            //grc的模拟频谱接收模块如：

                       usrp_fft.py –f 900M –R –A

usrp_benchmark_usb.py  //测试URAN1和电脑的USB通信速率
```

### URAN1测试

**URAN1与电脑的USB总线测试**

```
  #/usr/local/share/gnuradio/examples/usrp/usrp_benchmark_usb.py
```

**benchmark信号发射测试**

```
  # cd /usr/local/share/gnuradio/examples/digital/narrowband/

  #./benchmark_tx.py –f 900M –T A    //发射一个900M的信号
```

**接收测试**

```
  #cd /usr/local/share/gnuradio/examples/digital/narrowband/

  #./benchmark_rx.py –f 900M –R A    //接收一个900M的信号

  或者

  #usrp_fft.py –f 900M –f –R A   //模拟频谱接收900M的信号
```

### URAN1相关命令的使用

**重新烧写URAN1程序命令**

```
  #/usr/local/src/gnuradio-3.3.0/usrp/firmware/src/usrp2/burn-usrp4-eeprom

  #/usr/local/src /gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx900_mimo_b -A –f
```

**URAN1频点改写：900M---1800M**

```
  #/usr/local/src/gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx1800_mimo_b -A –f
```

**OpenBTS GSM.Band=900 改为GSM.Band 1800**

```
1> 刷写子板频点
  #/usr/local/src/gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx1800_mimo_b -A –f
2> 修改OpenBTS配置文件
   cd /usr/local/src/openbts-2.6.0Mamou/app
   打开文件Openbts.conf,修改以下参数：
   # Valid band values are 850, 900, 1800, 1900.
   GSM.Band 1800
   # Valid ARFCN range depends on the band.
   GSM.ARFCN 585
```

### 硬件相关

* [URAN1原理图](https://s3.cn-north-1.amazonaws.com.cn/microembedded/USRP%E4%BA%A7%E5%93%81%E6%8A%80%E6%9C%AF%E8%B5%84%E6%96%99/RAD1/RAD1%E6%8A%80%E6%9C%AF%E6%96%87%E6%A1%A3%E6%95%B4%E7%90%86/RAD1%E5%8E%9F%E7%90%86%E5%9B%BE/RAD-1%E5%8E%9F%E7%90%86%E5%9B%BE.pdf)

* URAN1数据手册

### 应用实例

* OpenBTS的应用

* URAN1实验指导书

### 资料

* [GRC编程ppt](https://s3.cn-north-1.amazonaws.com.cn/microembedded/USRP%E4%BA%A7%E5%93%81%E6%8A%80%E6%9C%AF%E8%B5%84%E6%96%99/RAD1/RAD1%E6%8A%80%E6%9C%AF%E6%96%87%E6%A1%A3%E6%95%B4%E7%90%86/RAD1--GRC--PPT/gr_tutorial.pdf)


* URAN1硬件产品说明

### FAQ:

* 1> 在Ubantu中所以操作尽可能用root
