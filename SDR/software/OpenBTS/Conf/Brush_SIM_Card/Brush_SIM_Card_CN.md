# 怎样刷写SIM卡

###### 0x01 --- 环境

* SIM卡（一张）
* 刷卡器（一个）
* 装有ubuntu 1204系统之前的电脑（一台）
* pysim 软件 [下载地址 1](https://github.com/4genginc/pysim/archive/master.zip) 、[下载地址 2](https://s3.amazonaws.com/rfagora/sooof/software/pySim/pysim.tar)


###### 0x02 --- 步骤：
* 1.	电脑开机，打开终端并切换到root用户
命令参考：
快捷键打开终端``“Ctrl +Alt+t”``
切换到root用户，终端输入：`sudo su`  回车后输入密码

* 2.	将pysim软件复制到电脑桌面，并解压
命令参考：
```Bash
     cd /home/admins/Desktop/   
     mkdir pysim
     tar xvf pysim.tar
     或
     unzip -o -d /home/admins/Desktop/pysim  master.zip
     cd pysim
```

![Brush_SIM_Card00.png](https://s3.amazonaws.com/rfagora/image/img/Brush_SIM_Card/Brush_SIM_Card00.png)

*pysim目录内容如上图：*

* 3.	目录:`` /home/admins/Desktop/pysim/``下，有``“pySim-prog.py”``文件，这是刷卡命令文件，``“Readme”``文件，是刷卡命令参考
刷写命令参考：



**刷写命令参考：**

```Bash
/*****test*****/
./pySim-prog.py -d /dev/ttyUSB0 -n 2101 -c 49 -x 460 -y 07 -i 460077029239681 -s 8986077890123452101
./pySim-prog.py -d /dev/ttyUSB0 -n 2102 -c 49 -x 460 -y 07 -i 460071773117280 -s 8986077890123452102
./pySim-prog.py -d /dev/ttyUSB0 -n 2103 -c 49 -x 460 -y 07 -i 460079211903523 -s 8986077890123452103
./pySim-prog.py -d /dev/ttyUSB0 -n 2104 -c 49 -x 460 -y 07 -i 460073299225619 -s 8986077890123452104
./pySim-prog.py -d /dev/ttyUSB0 -n 2105 -c 49 -x 460 -y 07 -i 460077029239684 -s 8986077890123452105
./pySim-prog.py -d /dev/ttyUSB0 -n 2106 -c 49 -x 460 -y 07 -i 460077029239685 -s 8986077890123452106
./pySim-prog.py -d /dev/ttyUSB0 -n 2107 -c 49 -x 460 -y 07 -i 460077029239687 -s 8986077890123452107
./pySim-prog.py -d /dev/ttyUSB0 -n 2108 -c 49 -x 460 -y 07 -i 460077029239688 -s 8986077890123452108
./pySim-prog.py -d /dev/ttyUSB0 -n 2109 -c 49 -x 460 -y 07 -i 460077029239689 -s 8986077890123452109
./pySim-prog.py -d /dev/ttyUSB0 -n 2110 -c 49 -x 460 -y 07 -i 460077029239690 -s 8986077890123452110
./pySim-prog.py -d /dev/ttyUSB0 -n 2111 -c 49 -x 460 -y 07 -i 460077029239691 -s 8986077890123452111
./pySim-prog.py -d /dev/ttyUSB0 -n 2112 -c 49 -x 460 -y 07 -i 460077029239692 -s 8986077890123452112
./pySim-prog.py -d /dev/ttyUSB0 -n 2113 -c 49 -x 460 -y 07 -i 460077029239693 -s 8986077890123452113
./pySim-prog.py -d /dev/ttyUSB0 -n 2114 -c 49 -x 460 -y 07 -i 460077029239694 -s 8986077890123452114
./pySim-prog.py -d /dev/ttyUSB0 -n 2115 -c 49 -x 460 -y 07 -i 460077029239695 -s 8986077890123452115
```
