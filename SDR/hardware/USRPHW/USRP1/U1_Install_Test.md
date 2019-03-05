# 系统安装测试

本文基于 **[OpenBTS3.09 52M ISO](https://s3.cn-north-1.amazonaws.com.cn/microembedded/system_mirrors/openbts_v3.09_52M.iso)**

## 0x01 --- 设置光驱启动

1、开启计算机，进入系统之前按 F2（不同厂商之间可能有所差别）。
2、进入 BIOS 之后以方向键选择``[BIOS  Features  Setup]``或者``[Advanced BIOS  Features]``，不管如何，只要看到``[BIOS  Features]``字样的那一项就对了。
3、将方向键移动至``[Boot  Sequence]``或者``[First  Boot  Device]``这一项，按键 盘上的``[Page Up]``或者``[Page Down]``按键，选择[CD-ROM]为第一开机顺位即可。
4、按[ESC]键推出。
5、将方向键移动至``[Save   and   Exit]``这一项，然后按``[Enter]``及``[Y]``确认后重 新开机。

## 0x02 --- 安装光盘中的 Ubuntu 系统

###### 1、插入光盘，启动计算机后，会依次出现以下画面：

![URAN1_Install_Test 1](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test1.png)

Pic1

![URAN1_Install_Test 2](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test2.png)

Pic2

![URAN1_Install_Test 3](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test3.png)

Pic3

系统默认为``[English]``,右边有两个选项``[Try Ubuntu]``和``[Install Ubuntu]``；

###### 2、

 * （1）点击``[Try  Ubuntu]``可以启动光盘中的 Ubuntu 系统，如下图所示：

 ![URAN1_Install_Test 4](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test4.png)

 Pic4

 这里可以运行各种测试程序，完成对实验平台的测试，但是速度较慢，如需 现阶段就开始测试实验平台，请跳至下面的【三】继续阅读；如需将系统装入您 的计算机，请继续阅读；
 * （2）点击``[Install  Ubuntu]``可以将 Ubuntu 系统装入计算机，如下图所示：

 ![URAN1_Install_Test 5](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test5.png)

 Pic5

 点击[Forward]继续安装：

 ![URAN1_Install_Test 6](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test6.png)

 Pic6

 如果您的计算机中已装有其他操作系统会出现如上图所示的三个选项：
 第一项为本系统和计算机中的其他操作系统共存； 第二项为覆盖其他操作系统；
 第三项为手动选择安装模块；
 我们选择第一项，然后点击``[Forward]``:

 ![URAN1_Install_Test 7](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test7.png)

 Pic7

 （上图为虚拟机的安装截图仅作指导作用，显示内容可以与您的计算机有所 不同，但是并不影响安装）
点击``[Install Now]``继续安装：

###### 3、在安装过程中会以下出现如下画面完成您对系统的个人配置： 选择您所在的时区如：shanghai

然后点击``[Forward]``:

![URAN1_Install_Test 8](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test8.png)

Pic8

选择键盘布局，默认为  USA，点击``[Forward]``:

![URAN1_Install_Test 9](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test9.png)

Pic9

输入姓名、密码和密码确认，默认``[Require  my password  to  log  in]``即需 要密码登入，点击``[Forward]``:

![URAN1_Install_Test 10](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test10.png)

Pic10

等待系统安装完成，需要一段时间，期间可以点击左右拉箭头阅读系统的一 些介绍：

![URAN1_Install_Test 11](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test11.png)

Pic11

完成后会出现如下画面，系统询问是否重启，点击``[Restart  Now]``；重启之前，请将计算机调回硬盘启动（参照第一步）；

![URAN1_Install_Test 12](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test12.png)

Pic12

至此 Ubuntu 系统已经安装完成。

###### 4、重新开机后会出现如下画面:

![URAN1_Install_Test 13](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test13.png)

Pic13

输入密码登入刚才安装的 Ubuntu 系统：

![URAN1_Install_Test 14](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test14.png)

Pic14

## 0x03 --- 运行测试程序

###### 1、打开一个终端，如下图所示：

![URAN1_Install_Test 15](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test15.png)

Pic15

###### 2、linux 下直接操作硬件设备需要管理员权限，输入指令`sudo su`，输入 密码切换至 root 权限

![URAN1_Install_Test 16](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test16.png)

Pic16

注意：输入密码时不会显示任何数字或字母。

###### 3、运行`usrp_probe`检查母版，子板的连接是否正确：

![URAN1_Install_Test 17](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test17.png)

Pic17

选择要检查的子板端口点击``[probe]``:

![URAN1_Install_Test 18](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test18.png)

Pic18

完成各子板检查后关闭 USRP Probe

###### 4、运行

```bash
/usr/local/share/gnuradio/examples/usrp/usrp_benchmark_usb.py
```
测试
USB 通信速率：

![URAN1_Install_Test 19](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test19.png)

Pic19

正确结果如下，如出现 failed，则母版的 USB 接口故障：

![URAN1_Install_Test 20](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test20.png)

Pic20

###### 5、检测两套 USRP 设备之间的收发功能是否正常  

进入 ``/usr/share/gnuradio/examples/digital ``目录，默认两套设备子板
为FLEX900，都插在母版 A 口，
一台机器运行
```bash
benchmark_tx.py –f 900M –T A
```
发射信号：

![URAN1_Install_Test 21](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test21.png)

Pic21

另一台运行
```bash
usrp_fft.py  –f  900M  –R  A  
```

![URAN1_Install_Test 22](https://s3.amazonaws.com/rfagora/image/img/URAN1_Install_Test/URAN1_Install_Test22.png)

Pic22

频谱会发生变化。
