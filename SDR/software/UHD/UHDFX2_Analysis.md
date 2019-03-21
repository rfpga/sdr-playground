# UHD FX2 Analysis


###### 0x01 --- 参照:

* [ubuntu-14.04.2-desktop-amd64](https://s3.amazonaws.com/rfagora/image/ubuntu/ubuntu-14.04.2-desktop-amd64.iso)

###### 0x02 --- 分析:

* 1、路径/uhd/firmware/fx2/usrp1/下，usrp_main.c文件中，主函数：

```
memset (hash1, 0, USRP_HASH_SIZE); //为FPGA 比特流散列清零，重装。（zero fpga bitstream hash.  This forces reload）
```

```
init_usrp ();	//初始化USRP
init_gpif ();	//初始化GPIF

  // if (UC_START_WITH_GSTATE_OUTPUT_ENABLED)
  IFCONFIG |= bmGSTATE;			// 如果没冲突，首先用它
//	IFCONFIG |= 0100 当接口配置寄存器b2位被置为1时：
```

![UHD Analysis 01](https://s3.amazonaws.com/rfagora/image/img/UHD/UHDAnalysis01.png)

图1

个人理解：当此位被置为1时，E端口上的前三位将进行信号显示，这是可编程接口GPIF的状态指示，用于诊断的目的。

```
  set_led_0 (0);	//PC6端的D403亮
  set_led_1 (0);	//PC7端的D402亮

  EA = 0;		// 禁止所有中断

  patch_usb_descriptors();		//修补USB描述符

  setup_autovectors ();			//自动设置
  usb_install_handlers ();		//USB安装助手
  hook_timer_tick ((unsigned short) isr_tick);

  EIEX4 = 1;		// disable INT4 FIXME
  EA = 1;		// 使能 全局中断

  fx2_renumerate ();	// simulates disconnect / reconnect 模拟 断开/ 连接

  main_loop ();
```

###### 0x03 --- 分析:

`init_usrp ();	//初始化USRP` 此函数调用`usrp_common.c`中的`init_usrp ()`

```
void
init_usrp (void)
{
  CPUCS = bmCLKSPD1;    // CPU runs @ 48 MHz (bmCLKSPD1=10000)
  CKCON = 0;        // MOVX takes 2 cycles

  // IFCLK is generated internally and runs at 48 MHz; GPIF "master mode" (IFCONFIG = 11110010)

  IFCONFIG = bmIFCLKSRC | bm3048MHZ | bmIFCLKOE | bmIFCLKPOL | bmIFGPIF;
  SYNCDELAY;

  // configure IO ports (B and D are used by GPIF)

  IOA = bmPORT_A_INITIAL;   // Port A initial state      ---   11 1000
  OEA = bmPORT_A_OUTPUTS;   // Port A direction register ---   11 1011

  IOC = bmPORT_C_INITIAL;   // Port C initial state      --- 1100 0000
  OEC = bmPORT_C_OUTPUTS;   // Port C direction register --- 1100 1111

  IOE = bmPORT_E_INITIAL;   // Port E initial state      --- 1111 0000
  OEE = bmPORT_E_OUTPUTS;   // Port E direction register --- 1111 1000

```
