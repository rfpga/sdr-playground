# Install UHD ang GNUradio to Ubuntu1404

###### 0X01 --- 下载：

* [ubuntu-14.04.2-desktop-amd64](https://s3.amazonaws.com/rfagora/image/ubuntu/ubuntu-14.04.2-desktop-amd64.iso)

* [install_uhdgnuradio.sh](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/install_uhdgnuradio.sh)

* [020_install_uhd.sh](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/020_install_uhd.sh)

* [025_install_gnuradio.sh](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/025_install_gnuradio.sh)

* [archives.tar](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/archives.tar)

* [uhd.tar.bz2](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/uhd.tar.bz2)

* [gnuradio.tar.bz2](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/gnuradio.tar.bz2)

###### 0X01 --- 安装：


* 1、制作ubuntu-14.04.2的U盘启动盘 [make_usb_boot](<../../other/linux_development/Tools/USB/make_usb_boot.md>)

* 2、安装ubuntu-14.04.2

* 3、按control+ait+t启动终端

```
$sudo su
#mkdir 14.04
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/install_uhdgnuradio.sh
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/020_install_uhd.sh
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/025_install_gnuradio.sh
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/archives.tar
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/uhd.tar.bz2
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/gnuradio.tar.bz2

#chmon 755 *.sh
#./install_uhdgnuradio.sh

```