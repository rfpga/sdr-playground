# web_srv_embeded 编辑记录

本文基于 **[web_srv_embeded.tar.gz](https://s3.amazonaws.com/rfagora/image/SDR/web_srv_embeded/web_srv_embed.tar.gz)**

用户名：
密码：

###### 0X01 ---
```
1. openbts/trunk/Transceiver52M/Transceiver.cpp:

	1)void Transceiver::setModulus(int timeslot)
	定义GSM的帧长

	2)Transceiver::CorrType Transceiver::expectedCorrType(GSM::Time currTime)
	判断上行信号的类别
```

###### 0X02 ---

```
2. openBTS/trunk/apps/OpenBTS.cpp:

	1)int main(int argc, char *argv[]):
	定义C0T0的信道结构，C0T0含有BCCH,CCCH,RACH三种信道，其中CCCH用作AGCH信道。
```

###### 0X03 ---

```
3. openBTS/trunk/GSM/GSMTDMA.cpp:

	1)定义CCCH_4至CCCH_8信道；

	2)注释掉SDCCH_4信道的定义；

	3）注释掉gSDCCH_4_0Pair至gSDCCH_4_3Pair;

	4)注释掉gSACCH_C4_0Pair至gSACCH_C4_3Pair;

	5)注释掉gSDCCH_4_0至gSDCCH_4_3和gSDCCH4[4];

	6)定义RACHC5Frames[]；
```

###### 0X04 ---

```
4. openBTS/trunk/GSM/GSMTDMA.h:

	1)注释掉gSDCCH_4_0DMapping至gSDCCH_4_3UMapping;

	2)注释掉gSACCH_C4_0Mapping至gSACCH_C4_3UMapping;

	3)增加gCCCH_4Mapping至gCCCH_8Mapping;
```
###### 0X05 ---

```
5. openBTS/trunk/Control/RadioResource.cpp:

	1)重写ChannelType decodeChannelNeeded(unsigned RA)；
```
###### 0X06 ---

```
6. openBTS/trunk/Control/MobilityManagement.cpp:

	1)改写void Control::LocationUpdatingController(const L3LocationUpdatingRequest* lur, LogicalChannel* DCCH)
	这是一个非常重要的函数，所有的故事几乎都在这里发生。
```

###### 0X07 ---

```
7. openBTS/trunk/Control/insert_sms_to_mq.c:
	这是新写的一个文件, 专门处理LocationUpdatingController()函数内部的事件。
```

###### 0X08 ---

```
8. 在/etc/OpenBTS/目录下新建一个sqlite3 数据库user_define.db, 然后在该数据库下新建5个数据表，命令如下：

	1）CREATE TABLE sms_define(kddate datetime not null default (datetime('now', 'localtime')), sms_text varchar(140) not null, sms_pdu varchar(560) null, send_tel varchar(20) not null default ('106632865688'), smsc_tel varchar(20) not null default ('1000'), sms_pdu_head varchar(200) null, constraint sms_define_text unique(sms_text));
	短信的定义表。

	2）create table login_history(id integer not null primary key, name varchar(30) not null, lastlogintime datetime not null default (datetime('now', 'localtime')), lastloginip varchar(30) not null, constraint login_history_name unique(name));
	操作用户登录记录表。

	3）create table userbird(id integer not null primary key,name varchar(30) not null,password varchar(30) not null,usergroup varchar(30) not null,fnlist varchar(1000) null,salesdeptno varchar(30) not null, deptfatherno varchar(30) null, position varchar(20) null,kddate datetime not null default(datetime('now', 'localtime')),constraint userbird_name unique(name));
	操作用户表。

	4）create table sms_sent_history(id integer not null primary key, kddate datetime not null default(datetime('now', 'localtime')), sms_text varchar(140) not null, sms_pdu varchar(560) null, smsc_tel varchar(20) null, send_tel varchar(20) not null, imsi varchar(20) not null, status int not null default(0));
	短信的发送记录表。

	5）create table imsi_login_history(id integer not null primary key, kddate datetime not null default(datetime('now', 'localtime')), imsi varchar(20) not null, constraint imsi_login_history_imsi unique(imsi));
	IMSI的登录记录表。

	6）insert into userbird(name, password, usergroup, salesdeptno) values('super', '123', 'super', 'super');
	向userbird这个表初始化，增加super的原始密码。
```

###### 0X09 ---

```
9.参数的设置：所有的参数均在/etc/openBTS/OpenBTS.db数据库中：

	1）大多参数见网页上的设置；

	2）GSM.Channels.NumC7s:用于注册和短信，默认为0，改为7: update config set valuestring='7' where keystring='GSM.Channels.NumC7s';

	3）GSM.Channels.NumC1s:用于通话，默认为7，改为0: update config set valuestring='0' where keystring='GSM.Channels.NumC1s';

	4）GSM.CCCH.CCCH-CONF：要设为0.
```

###### 0X10 ---
```
10. 用户界面：
	在web_srv_embeded目录下。
```

###### 0X11 ---

```
11. 默认openbts目录部署在/home/chen/下面
```

###### 0X12 ---

```
12. 编辑/etc/rc.local文件，在结尾 “exit 0“ 之前添加这样一个语句："/home/chen/web_srv_embeded/web_gate"。
	说明：这样就能在设备启动后，在相连接的电脑的浏览器上，输入“192.168.1.254”就能设置和管理设备了。    
```

###### 0X13 ---

```
13. web_srv_embeded/web_gate的执行需要有超级用户的权限，openBTS的执行也需要有超级用户的权限。
```

###### 0X14 ---

```
14. openBTS的编译步骤：

	1）进入到trunk目录；
	2) ./configure --with-urrp1
	3) ./make
```
