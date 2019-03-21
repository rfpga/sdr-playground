# UHD Development 环境搭建

###### 0X01 --- 安装操作系统

* Install Docker UHD ang GNUradio to Ubuntu1604

* Install Docker UHD ang GNUradio to Ubuntu1404

###### 0X02 --- vim+tags+

###### 0X03 --- 安装刷写USRP1 EEPROM系统

* USB方式

```
将文件系统移到新硬盘的方法：
1、将需要移的文件系统打包
cd /
tar jcvf root904.tar.bz2 ./*
2、利用fdisk在新硬盘建立分区
3、利用liveDVD进入到live模式，挂载分区
mount /dev/sda5 /mnt
4、解压文件系统
tar xjvf root904.tar.bz2 -C /mnt
chmod 755 /mnt
5、安装grub
#:mount     /dev/sda5     /mnt  （上面已做）
#:mount -t  proc   proc   /mnt/proc
#:mount -o bind   /dev   /mnt/dev
#:mount -o bind   /sys   /mnt/sys
#:chroot     /mnt   /bin/bash

#:(/usr/sbin/)grub-install /dev/sda
#:update-grub
#:exit
6、

FAQ:
1、不能引导分区，出现错误grub Error 15: File not found
解决：
a、在grub引导界面时，安C键
grub>root (hd0,4)
grub>kernel /boot/vmlinuz root=/dev/sda5
grub>boot
 (文件系统在sda5中，所以第一句为（hd0,4）)

2、
查看分区uuid的方法，终端输入 blkid 或 ls -l /dev/disk/by-uuid，通常后者比较有效
3、
/dev/sda5 no fount or not a block device
解决：
修改/etc/mtab
```

* 本机方式

```
wget https://s3.amazonaws.com/rfagora/image/SDR/root9.04.tar.bz2
tar xjvf root904.tar.bz2 -C /mnt

#:mount -t  proc   proc   /mnt/proc
#:mount -o bind   /dev   /mnt/dev
#:mount -o bind   /sys   /mnt/sys
#:chroot     /mnt   /bin/bash

```

###### 0X04 --- fx2 firmware 编译

```
cd  uhd/firmware/fx2
mkdir build
cmake ../
make

cp -av /usr/local/share/uhd/images/usrp1_fw.ihx{,bak}
cp -av ./usrp1/usrp1_fw.ihx /usr/local/share/uhd/images/usrp1_fw.ihx
```
