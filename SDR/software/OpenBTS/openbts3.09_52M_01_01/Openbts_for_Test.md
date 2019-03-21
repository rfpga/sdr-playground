### 设备测试

本文基于 **[OpenBTS3.09 52M ISO](https://s3.cn-north-1.amazonaws.com.cn/microembedded/system_mirrors/openbts_v3.09_52M.iso)**

**设备与电脑的USB总线测试**

```bash
  #/usr/local/share/gnuradio/examples/usrp/usrp_benchmark_usb.py
```

**benchmark信号发射测试**

```bash
  # cd /usr/local/share/gnuradio/examples/digital/narrowband/
  #./benchmark_tx.py –f 900M –T A    #发射一个900M的信号
```

**接收测试**

```bash
  #cd /usr/local/share/gnuradio/examples/digital/narrowband/
  #./benchmark_rx.py –f 900M –R A    #接收一个900M的信号
```
  或者
```bash
  #usrp_fft.py –f 900M –f –R A       #模拟频谱接收900M的信号
```

**OpenBTS测试**

* 1> 下载asterisk cn 配置文件（[sip.conf](https://s3.amazonaws.com/rfagora/image/conf/asterisk/openbts2.6_asterisk/460sip.conf)、[extensions.conf](https://s3.amazonaws.com/rfagora/image/conf/asterisk/openbts2.6_asterisk/460extensions.conf))

 下载asterisk us 配置文件（[sip.conf](https://s3.amazonaws.com/rfagora/image/conf/asterisk/openbts2.6_asterisk/310sip.conf)、[extensions.conf](https://s3.amazonaws.com/rfagora/image/conf/asterisk/openbts2.6_asterisk/310extensions.conf))
* 2> control+alt+t打开终端

```bash
  #sudo su
  #mv 460sip.conf /etc/asterisk/sip.conf
  #mv 460extensions.conf /etc/asterisk/extensions.conf
  #asterisk -rx "sip reload"
  #asterisk -rx "dialplan reload"
```
```bash
  #sudo su
  #mv 310sip.conf /etc/asterisk/sip.conf
  #mv 310extensions.conf /etc/asterisk/extensions.conf
  #asterisk -rx "sip reload"
  #asterisk -rx "dialplan reload"
```
* 3> 运行openbts

```bash
  #cd /usr/local/src/openbts-2.6.0Mamou/apps
  #./OpenBTS
```

* 4> control+alt+t打开另一个终端,运行短信功能

```bash
  #cd /usr/local/src/openbts-2.6.0Mamou/smqueue
  #./smqueue
```

**OpenBTS GSM.Band=900 改为GSM.Band 1800**

* 1> 刷写子板频点

```bash
  #/usr/local/src/gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx1800_mimo_b -A –f
```
* 2> 修改OpenBTS配置文件

```bash
   cd /usr/local/src/openbts-2.6.0Mamou/apps
```
   打开文件Openbts.conf,修改以下参数：

```text
   # Valid band values are 850, 900, 1800, 1900.
   GSM.Band 1800
   # Valid ARFCN range depends on the band.
   GSM.ARFCN 585
```
