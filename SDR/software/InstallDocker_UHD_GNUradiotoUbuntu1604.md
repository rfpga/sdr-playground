# Install Docker UHD ang GNUradio to Ubuntu1604


###### 0X01 --- 安装UHD GNURadio：


* 1、制作ubuntu-16.04.2的U盘启动盘 [make_usb_boot](<../../other/linux_development/Tools/USB/make_usb_boot.md>)

* 2、安装ubuntu-16.04.2

* 3、按control+ait+t启动终端

```bash
$sudo su
wget https://raw.githubusercontent.com/iplinkme/sooof_workspace/master/WorkSH/Ubuntu1604/install_uhdgnuradio_1604.sh
chmod 755 *.sh
./install_uhdgnuradio.sh

```

###### 0X02 --- 安装docker / UHD / GNURadio：

* 1、[制作ubuntu-14.04.2的U盘启动盘](<../../other/linux_development/Tools/USB/make_usb_boot.md>)

* 2、安装ubuntu-14.04.2

* 3、按control+ait+t启动终端

```bash
$sudo su
wget https://raw.githubusercontent.com/iplinkme/sooof_workspace/master/WorkSH/Ubuntu1404/install_uhdgnuradiodocker.sh
chmod 755 *.sh
./install_uhdgnuradiodocker.sh
```

###### 0X04 --- 安装vnc：

mac使用vnc远程登录ubuntu14.04桌面

* 1.安装
在Ubuntu上安装x11vnc，如下：

```
sudo apt-get install x11vnc -y
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

![vnc viewer 02](https://s3.amazonaws.com/rfagora/image/tools/VNC/VncViewer0002.png)

###### 0X04 --- 安装atom：

* [atom for ubuntu1604](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1604/U1404S/atom-amd64_u1604.deb)

* install

```
sudo apt-get -f install
sudo dpkg -i atom-amd64_u1604.deb
```

###### 0X05 --- 安装vim conf：


###### 0X05 --- 安装teamviewer：

* [teamviewer for ubuntu1604](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1604/U1404S/teamviewer_14.1.9025_amd64_u1604.deb)

* install

```
sudo apt-get -f install
sudo dpkg -i teamviewer_14.1.9025_amd64_u1604.deb
```
