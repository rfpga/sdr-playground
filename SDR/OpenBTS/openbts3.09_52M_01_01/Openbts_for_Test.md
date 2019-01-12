### 0X04 设备测试

**设备与电脑的USB总线测试**

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

**OpenBTS测试**

* 1> 下载asterisk 配置文件（[sip.conf](https://s3.amazonaws.com/rfagora/image/conf/asterisk/openbts2.6_asterisk/sip.conf)、[extensions.conf](https://s3.amazonaws.com/rfagora/image/conf/asterisk/openbts2.6_asterisk/extensions.conf))
* 2> control+alt+t打开终端

```
  #sudo su
  #asterisk -rx "sip reload"
  #asterisk -rx "dialplan reload"
```

* 3> 运行openbts

```
  #cd /usr/local/src/openbts-2.6.0Mamou/apps
  #./OpenBTS
```

* 4> control+alt+t打开另一个终端,运行短信功能

```
  #cd /usr/local/src/openbts-2.6.0Mamou/smqueue
  #./smqueue
```
