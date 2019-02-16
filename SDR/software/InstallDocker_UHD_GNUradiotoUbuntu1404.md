# Install Docker UHD ang GNUradio to Ubuntu1404


###### 0X01 --- 安装UHD GNURadio：


* 1、制作ubuntu-14.04.2的U盘启动盘 [make_usb_boot](<../../other/linux_development/Tools/USB/make_usb_boot.md>)

* 2、安装ubuntu-14.04.2

* 3、按control+ait+t启动终端

```bash
$sudo su
mkdir 14.04
cd 14.04
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/install_uhdgnuradio.sh
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/020_install_uhd.sh
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/025_install_gnuradio.sh
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/archives1404.tar
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/uhd.tar.bz2
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/gnuradio.tar.bz2

chmon 755 *.sh
./install_uhdgnuradio.sh

```

###### 0X02 --- 安装docker / UHD / GNURadio：

* 1、制作ubuntu-14.04.2的U盘启动盘 [make_usb_boot](<../../other/linux_development/Tools/USB/make_usb_boot.md>)

* 2、安装ubuntu-14.04.2

* 3、按control+ait+t启动终端

```bash
$sudo su
#mkdir 14.04
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/install_uhdgnuradiodocker.sh
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/015_install_docker.sh
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/020_install_uhd.sh
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/025_install_gnuradio.sh
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/archives1404.tar
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/uhd.tar.bz2
#wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/gnuradio.tar.bz2

#chmon 755 *.sh
#./install_uhdgnuradiodocker.sh

```

###### 0X04 --- 安装vnc：

mac使用vnc远程登录ubuntu14.04桌面

* 1.安装
在Ubuntu上安装x11vnc，如下：

```
sudo apt-get install x11vnc
```

* 2.配置vnc密码

```
x11vnc -storepasswd
```

* 3.启动vnc服务

```
x11vnc -forever -shared -rfbauth ~/.vnc/passwd
```

最好后台执行

* 4.在mac上安装vnc viewer，安装好后，在File菜单里New connection，填上ip，然后点击OK即可

![vnc viewer 01](https://s3.amazonaws.com/rfagora/image/tools/VNC/VncViewer0001.png)


连上后效果如下

![vnc viewer 02](https://s3.amazonaws.com/rfagora/image/tools/VNC/VncViewer0002.png

###### 0X04 --- 安装atom：

https://atom.io/download/deb
