# OpenBTS for Docker 下载、安装、运行

## 0x01 --- 准备

* Hardware

  * URAN1
  * 电源 + USB线 + Vert900 天线


* Pre-installed Software

    * [ubuntu-14.04.2-desktop-amd64](https://s3.amazonaws.com/rfagora/image/ubuntu/ubuntu-14.04.2-desktop-amd64.iso) 或 [ubuntu-14.04.5-desktop-amd64](https://s3.amazonaws.com/rfagora/image/ubuntu/ubuntu-14.04.5-desktop-amd64.iso)
    * Docker
    * OpenBTS的Docker映像
    * 发现usrp的usb设备文件的脚本 --- [find_usb_dev.sh](https://s3.amazonaws.com/rfagora/image/openbts3.09_52M_01_01/find_usb_dev.sh)

## 0x02 --- OpenBTS for Docker映像下载指南

  获取最新版本 `wget https://s3.amazonaws.com/rfagora/image/openbts3.09_52M_02_01/openbts3.09_52M_02_01.tar`


  将openbts系统压缩文件转换为本地Docker镜像

  ```Bash
  #cat /media/SYS/openbts3.09_52M_02_01.tar | docker import - openbts3.09_52:0201 #Bash
  ```


## 0x03 --- OpenBTS for Docke Kit 准备

  使用OpenBTS Docker Kit系统 需要Ubuntu、Docker、OpenBTS的Docker映像、以及发现usrp的usb设备文件的脚本。

### Tools Required
  * 笔记本
  * URAN1 + 电源 + USB线 + Vert900 天线

### Pre-installed Software
  *  [ubuntu-14.04.2-desktop-amd64](https://s3.amazonaws.com/rfagora/image/ubuntu/ubuntu-14.04.2-desktop-amd64.iso)
  * Docker
  * OpenBTS的Docker映像 --- [openbts3.09_52M_02_01.tar](https://s3.amazonaws.com/rfagora/image/openbts3.09_52M_02_01/openbts3.09_52M_02_01.tar)
  * 发现usrp的usb设备文件的脚本 --- [find_usb_dev.sh](https://s3.amazonaws.com/rfagora/image/openbts3.09_52M_01_01/find_usb_dev.sh)


## 0x04 --- 在 Ubuntu 14.04 安装 Docker

  Docker利用Linux容器(LXC)虚拟化技术提供一份部署环境。Docker目的是创建可移植,可分发给任何的Docker环境中运行。Docker由于是OpenVZ的作品,对内核有一些要求，不要在14.04版本的Ubuntu仓库中已经可以查找到。

  * 安装Docker使用apt-get命令:

    ```Bash
    $sudo su
    ```

  * 安装Docker使用apt-get命令:

    ```Bash
    #apt-get install docker.io
    ```

  * 启动服务和守护进程

    ```Bash
    #service docker status
    #service docker start
    ```

  * 创建软连接

    ```Bash
    #ln -sf /usr/bin/docker.io /usr/local/bin/docker
    ```

  **注意:** 如没有提示错误则说明你已经在Ubuntu14.04上面快速安装Docker成功了。

  ###### 测试docker：

  1. 先从中央仓库下一个registry镜像下来

   ```Bash
   #docker pull registry
   ```

  2. 下载完成之后可以看到一个￼registry的镜像，通过命令启动容器（需要挂载一个本地目录，防止删除容器时将仓库中的镜像也删掉)

    ```Bash
    #docker run -d -p 5000:5000 -v /opt/data/registry:/tmp/registry registry
    ```

## 0x04 --- 在 Docker 上 Run BTS

运行OpenBTS需要经过以下两个步骤：

###### 1> 制作Docker映像

 * 下载

```Bash
wget https://s3.amazonaws.com/rfagora/image/openbts3.09_52M_02_01/openbts3.09_52M_02_01.tar
```
 * 运行以下命令：将openbts系统压缩文件转换为本地Docker镜像

```Bash
#cat /media/SYS/openbts3.09_52M_02_01.tar | docker import - openbts3.09_52:0201
```

###### 2> 运行OpenBTS

* a> 运行以下命令登陆Docker openbts3.09_52。

```Bash
#docker run -t -i --device=`cat find_usb_dev.txt`  openbts3.09_52:0201  /bin/bash
```

* b> 运行smqueue：

```Bash
root@9a59ca6ebc6a#cd /usr/local/src/openbts-2.6.0Mamou/smqueue/
root@9a59ca6ebc6a/usr/local/src/openbts-2.6.0Mamou/smqueue# ./smqueue
```

* c> 运行asterisk 和 OpenBTS：

```Bash
root@9a59ca6ebc6a#cd /usr/local/src/openbts-2.6.0Mamou/app
root@9a59ca6ebc6a:/usr/local/src/openbts-2.6.0Mamou/apps# asterisk -v &
root@9a59ca6ebc6a:/usr/local/src/openbts-2.6.0Mamou/apps# ./OpenBTS
```
