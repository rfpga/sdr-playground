# Install vnc\teamviewer\ for Ubuntu1604


###### 0X01 --- 其他记录：

**安装Docker 、 UHD 、GNURadio**
```bash
$sudo su
wget https://raw.githubusercontent.com/iplinkme/sooof_workspace/master/WorkSH/Ubuntu1404/install_uhdgnuradiodocker_1604.sh
chmod 755 *.sh
./install_uhdgnuradiodocker_1604.sh
```

**安装vnc**
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

###### 0X05 --- [安装vim conf](../../other/linux_development/Tools/VIM/VimConfig.md)：


###### 0X06 --- 安装teamviewer：

* [teamviewer for ubuntu1604](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1604/U1404S/teamviewer_14.1.9025_amd64_u1604.deb)

* install

```
sudo apt-get -f install
sudo dpkg -i teamviewer_14.1.9025_amd64_u1604.deb
```
