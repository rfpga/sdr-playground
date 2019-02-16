# Ubuntu teamviewer Install

###### 0x01 --- download teamviewer :

teamviewer下载地址：https://www.teamviewer.com/zhcn/download/linux/


```
mkdir ~/teamviewer
cd ~/teamviewer
wget wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
sudo teamviewer --daemon start
```
