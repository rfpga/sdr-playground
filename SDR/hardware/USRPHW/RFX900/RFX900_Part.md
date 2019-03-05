# RFX900 / RFX1800 产品配件说明


### 0X01 --- RFX900部分：

其包括 RFX900子板、馈线2个、Vert900天线2个。

###### 0X01 --- ：

* RFX900主板

* 馈线2个

* Vert900天线2个

###### 0X01 --- ：

* 所需部件总览：

![所需部件总览 01](https://s3.amazonaws.com/rfagora/image/img/RFX/RFX900_00001.JPG)


### 0X02 --- RFX1800部分：

其包括 RFX1800子板、馈线2个、Vert900天线2个。

RFX1800 跟 RFX1800子板使用的是同样的子板，仅仅是EEPROM配置不同

###### 0X01 --- 使用 **[openbts_v3.09_52M.iso](https://s3.cn-north-1.amazonaws.com.cn/microembedded/system_mirrors/openbts_v3.09_52M.iso)** 、**[Openbts_v2.09_64.iso](https://s3.cn-north-1.amazonaws.com.cn/microembedded/system_mirrors/Openbts_v2.09_64.iso)。**刷写子板方法相同。

* 1>下载以上的ISO文件

* 2>刻录成光盘 或 [制作live USB](<../../../../other/linux_development/Tools/USB/make_usb_boot.md>)。

* 3>用光盘或USB盘启动电脑。

* 4>RFX900 改写为 RFX1800 （仅仅改变EEPROM内容 ， 会引起 频点900M 变为 1800M）

```bash
  #/usr/local/src/gnuradio-3.3.0/usrp/host/apps/burn-db-eeprom -t rfx1800_mimo_b -A –f
```
