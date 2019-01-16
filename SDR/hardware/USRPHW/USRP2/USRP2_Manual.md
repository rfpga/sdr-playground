# USRP2 使用手册


###### 0X01 --- 产品特征：

###### 0X02 --- SD卡

* [USRP2 SD卡 dd 映像](https://s3.amazonaws.com/rfagora/image/USRP2DDimage/u2SD.bin)

###### 0x03 --- 刷写dd映像命令参考：

* 刷写dd映像命令参考：

```Bash
fdisk -l                                    #查看SD在linux系统下的设备名
dd if=/dev/mmcblk0 of=/home/sooof/u2SD.bin  #将SD卡备份为u2SD.bin
fdisk -l                                    #查看SD在linux系统下的设备名
dd of=/dev/mmcblk0 if=/home/sooof/u2SD.bin  #将u2SD.bin还原到SD卡
```
