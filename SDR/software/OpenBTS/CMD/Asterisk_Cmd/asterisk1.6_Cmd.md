# asterisk常用调试监测命令

asterisk是开源的VOIP系统。是目前最流行的VOIP开源软件。
在使用过程中  可以使用下述的命令，对系统进行监控调试。

###### asterisk 调试openbts常用命令：

```
asterist -r
core show help
sip show users
sip show user IMSI460071773117280
sip show peers
sip reload
dialplan reload
```


###### 1. 运行调试常用命令
```bash
./asterisk &     #在后台启动asterisk
./asterisk –vvvc #启动asterisk并尽量多的在控制台显示调试信息
./asterisk –r    #连接asterisk控制台
set verbose 9999 #设置打印详细信息
```
###### 2. asterisk控制台下常用命令
```bash
sip reload                #重新加载sip配置信息
sip set debug on          #设置显示更多的sip信息
sip set debug off         #关闭显示更多的sip信息
sip show channels         #显示所有活动的SIP通道
sip show peers            #显示所有已定义的SIP peer
```
```bash
dialplan show             #显示拨号方案
dialplan reload           #重新加载拨打方案
```
```bash
stop gracefully           #优雅地停止asterisk
stop now                  #立即停止运行asterisk
```
```bash
module show                 #显示所有已加载模块
module load cdr_radius.so   #加载模块cdr_radius.so
module reload cdr_radius.so #重新加载模块cdr_radius.so
module unload cdr_radius.so #卸载模块cdr_radius.so
```
```bash
core show applications  #显示所有的应用，比如Dial, Radius, Hangup, Answer等
core show channels      #显示所有的通话频道
core show codecs        #显示所有支持的编解码器
core show functions     #显示所有的功能函数
ps -aux                 #显示进程命令。
asterisk -rvc            #进入到asterisk。
输入: stop now            #停止关闭asterisk。
运行:  safe_asterisk      #启动asterisk。
core show channels       #显示并发线数。
```

Asterisk 提供了多种调试方法。连接控制台后，可以察看不同级别的冗长和调试输出，同时还有协议包 tracing。我们看一下本节不同的选项(The Asterisk 控制台详细信息请参考附件 。

###### 连接控制台     
  连接 Asterisk 控制台，你可以在控制台直接启动服务器（这样你如果不结束Asterisk 进程就不能退出控制台），或者后台启动 Asterisk，然后远程控制台登录。  
直接在控制台启动 Asterisk，使用下面的控制台命令：
```bash
# /usr/sbin/asterisk –c   
```   
远程连接控制台，首先启动后台，然后连接：
```bash
# /usr/sbin/asterisk
# /usr/sbin/asterisk -r      
```
如果遇到某个模块不能载入的问题，或者某个模块导致 Asterisk 不能载入，用``–c flag`` 启动 Asterisk
进程，监视模块载入状态。例如，如果你试图载入 OSS通道驱动（此驱动启动控制台通道），并且 Asterisk
不能打开``/dev/dsp``，你会收到如下的错误信息：
```text
WARNING[32174]: chan_oss.c:470 soundcard_init: Unable to open /dev/dsp:
No such file or directory
== No sound card detected — console channel will be unavailable
== Turn off OSS support by adding ‘noload=chan_oss.so’ in /etc/asterisk/modules.conf
```

###### 启动 Verbosity 和 Debugging      

Asterisk 可以以 WARNING，NOTICE 和 ERROR
消息形式输出调试信息。这些消息可以为你提供系统信息，例如注册、状态、呼叫进程和多种其它信息。请注意 WARNING 和 NOTICE
消息不是错误；然而，ERROR 信息需要进行检查。      
激活不同级别的 verbosity，使用 set verbose，附加一个数值。有效值从 3-10，例如设置 verbosity 的最高数值，
使用：``# set verbose 10 ``     
你也可以通过设置调试级别激活核心调试信息。激活控制台的 DEBUG 输出，需要在 `logger.conf` 文件中增加 `debug` 到 `console =>`文段，
例如：console => warning,notice,error,event,debug      
设置调试级别的有效值为 3-10，
例如：``# set debug 10``
