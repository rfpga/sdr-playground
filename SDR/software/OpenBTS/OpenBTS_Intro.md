# OpenBTS  介绍

## 0x01 --- 简介

 OpenBTS是一个基于软件的 GSM 接入点， GSM兼容手机允许标准作为SIP端点在语音IP（VOIP）网络。OpenBTS是一个开源的软件开发和维护的网络范围。OpenBTS for Docker是可以一个运行在docker上的openbts。

## 0x02 --- OpenBTS的ISO映像发布的版本

**[openbts3.09 52M ISO](https://s3.cn-north-1.amazonaws.com.cn/microembedded/system_mirrors/openbts_v3.09_52M.iso)：[此映像详细说明](<./openbts3.09_52M_01_01/openbts3.09_52M_ISO_intro.md>)（for 中国）**

	openbts_v3.09_52M.iso --- 老版本 openBts3.09_52 映像文件

  1. Ubuntu 10.10  
  2. 源码目录/usr/local/src/
  3. gnuradio-3.3.0
  4. kal-0.3
  5. openbts-2.6.0Mamou
  6. openbts 配置
   * a> Mobile Network Code: GSM.MCC == 460  
   * a> Location Area Code:  GSM.MNC ==  07
   * a> GSM.Band== 900
   * a> Valid ARFCN range depends on the band.GSM.ARFCN == 73
   * a> 基站收:=904.6MHz
   * a> 基站发:=949.6MHz


## 0x03 --- OpenBTS的Docker映像发布的版本

**[openbts4.12 52M 01.01 Docker映像](https://)：[此映像详细说明](<./openbts4.12_52M_01_01/openbts4.12_52M_01_01_intro.md>)（for US）**

    openbts4.12_52M_01_01.tar ---  openbts4.12_52M_01_01 映像文件

1. Ubuntu 12.04  
2. 源码目录/usr/local/src/
3. gnuradio-？
4. openbts-2.6.0Mamou
5. openbts 配置
 * a>  Mobile Network Code: GSM.MCC == 310  
 * a>  Location Area Code:  GSM.MNC ==  07
 * a> GSM.Band== 900
 * a> Valid ARFCN range depends on the band.GSM.ARFCN == 73
 * a> 基站收:=904.6MHz
 * a> 基站发:=949.6MHz


**[openbts3.09 52M 02.01 Docker映像](https://s3.amazonaws.com/rfagora/image/openbts3.09_52M_02_01/openbts3.09_52M_02_01.tar)：[此映像详细说明](<./openbts3.09_52M_02_01/openbts3.09_52M_02_01_intro.md>)（for US）**

	openbts3.09_52M_02_01.tar ---  openBts3.09_52 映像文件

  1. Ubuntu 10.10  
  2. 源码目录/usr/local/src/
  3. gnuradio-3.3.0
  4. kal-0.3
  5. openbts-2.6.0Mamou
  6. openbts 配置
   * a>  Mobile Network Code: GSM.MCC == 310  
   * a>  Location Area Code:  GSM.MNC ==  07
   * a> GSM.Band== 900
   * a> Valid ARFCN range depends on the band.GSM.ARFCN == 73
   * a> 基站收:=904.6MHz
   * a> 基站发:=949.6MHz

**[openbts3.09 52M 02.01 Docker映像](https://s3.amazonaws.com/rfagora/image/openbts3.09_52M_01_01/system1.tar)：[此映像详细说明](<./openbts3.09_52M_01_01/openbts3.09_52M_01_01_intro.md>)（for 中国）**

	system.tar --- 老版本 openBts3.09_52 映像文件

  1. Ubuntu 10.10  
  2. 源码目录/usr/local/src/
  3. gnuradio-3.3.0
  4. kal-0.3
  5. openbts-2.6.0Mamou
  6. openbts 配置
   * a>  Mobile Network Code: GSM.MCC == 460  
   * a>  Location Area Code:  GSM.MNC ==  07
   * a> GSM.Band== 900
   * a> Valid ARFCN range depends on the band.GSM.ARFCN == 73
   * a> 基站收:=904.6MHz
   * a> 基站发:=949.6MHz

## 0x04 --- [Books:](./OpenBTS_Books.md)
