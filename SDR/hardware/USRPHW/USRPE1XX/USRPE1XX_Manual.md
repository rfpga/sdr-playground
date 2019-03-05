# USRPE1XX 使用手册


###### 0X01 --- 产品特征：

###### 0X02 --- miniSD卡

* [USRPE1XX miniSD卡 dd 映像](https://s3.amazonaws.com/rfagora/image/USRPEXXDDimage/e110.bin)

* 映像信息：

 *用户名：root 密码：usrpe*

###### 0x03 --- 刷写dd映像命令参考：

* 刷写dd映像命令参考：

```Bash
fdisk -l                                    #查看SD在linux系统下的设备名
dd if=/dev/mmcblk0 of=/home/sooof/u2SD.bin  #将SD卡备份为u2SD.bin
fdisk -l                                    #查看SD在linux系统下的设备名
dd of=/dev/mmcblk0 if=/home/sooof/u2SD.bin  #将u2SD.bin还原到SD卡
```

###### 0x04 --- 连接：

* [USB接口种类：](<../../../../other/linux_development/Tools/USB/USB_Types.md>)

* USB Hub的电源、mini-B线缆：

![USRPE1XX_Conf04](https://s3.amazonaws.com/rfagora/image/img/USRPE1XX_Conf/USRPE1XX_Conf01.jpeg)

* 带电源的USB Hub、mini-B线缆、HDMI线缆 与 USRPE1XX设备：

![USRPE1XX_Conf04](https://s3.amazonaws.com/rfagora/image/img/USRPE1XX_Conf/USRPE1XX_Conf02.jpeg)

* mini-B USRPE1XX的连接：

![USRPE1XX_Conf03](https://s3.amazonaws.com/rfagora/image/img/USRPE1XX_Conf/USRPE1XX_Conf03.jpeg)

* 带电源的USB Hub、mini-B线缆、HDMI线缆与USRPE1XX的连接：

![USRPE1XX_Conf04](https://s3.amazonaws.com/rfagora/image/img/USRPE1XX_Conf/USRPE1XX_Conf04.jpeg)
