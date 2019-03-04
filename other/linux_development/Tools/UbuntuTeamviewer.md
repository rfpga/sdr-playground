# Ubuntu teamviewer Install



###### 0X02 --- 安装teamviewer：

* [teamviewer for ubuntu1604](https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1604/U1404S/teamviewer_14.1.9025_amd64_u1604.deb)

* install

```
sudo apt-get -f install
sudo dpkg -i teamviewer_14.1.9025_amd64_u1604.deb
```
###### 0x01 --- 参考文档 :

teamviewer下载地址：https://www.teamviewer.com/zhcn/download/linux/

```
mkdir ~/teamviewer
cd ~/teamviewer
wget wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
sudo teamviewer --daemon start
```
