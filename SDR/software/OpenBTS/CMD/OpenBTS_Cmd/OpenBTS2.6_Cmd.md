#

本文基于 **[OpenBTS3.09 52M ISO](https://s3.cn-north-1.amazonaws.com.cn/microembedded/system_mirrors/openbts_v3.09_52M.iso)**

```
1547411825.074518 3078600400:
Starting the system...
1547411825.0746 ALARM 3078600400 OpenBTS.cpp:129:main: OpenBTS starting, ver 2.6PUBLIC build date Feb 29 2012
1547411825.0761 FORCE 3078584016 Logger.cpp:194:gLogInit: Setting initial global logging level to INFO
1547411830.811739 3078600400:

Welcome to OpenBTS.  Type "help" to see available commands.
OpenBTS>

alarms		calls		cellid		
chans		config		configsave
exit		findimsi	help		
load		noise		notices		
page		power		regperiod
rxgain		sendrrlp	sendsms		
setlogfile	testcall	tmsis		
unconfig	uptime		version		


OpenBTS> help alarms
alarms -- show latest alarms
OpenBTS> help calls
calls -- print the transaction table
OpenBTS> help cellid
cellid [MCC MNC LAC CI] -- get/set location area identity (MCC, MNC, LAC) and cell ID (CI)
OpenBTS> help chans
chans -- report PHY status for active channels
OpenBTS> help config
config [] OR [patt] OR [key val(s)] -- print the current configuration, print configuration values matching a pattern, or set/change a configuration value
OpenBTS> help configsave
configsave <path> -- write the current configuration to a file
OpenBTS> help exit
exit [wait] -- exit the application, either immediately, or waiting for existing calls to clear with a timeout in seconds
OpenBTS> help findimsi
findimsi [IMSIPrefix] -- prints all imsi's that are prefixed by IMSIPrefix
OpenBTS> help load
load -- print the current activity loads.
OpenBTS> help noise
noise -- report receive noise level in RSSI dB
OpenBTS> help notices
notices -- show startup copyright and legal notices
OpenBTS> help page
page [IMSI time] -- dump the paging table or page the given IMSI for the given period
OpenBTS> help power
power [minAtten maxAtten] -- report current attentuation or set min/max bounds
OpenBTS> help regperiod
regperiod [GSM] [SIP] -- get/set the registration period (GSM T3212), in MINUTES
OpenBTS> help rxgain
rxgain [newRxgain] -- get/set the RX gain in dB
OpenBTS> help sendrrlp
sendrrlp <IMSI> <hexstring> -- send RRLP message <hexstring> to <IMSI>.
OpenBTS> help sendsms
sendsms <IMSI> <src> -- send SMS to <IMSI>, addressed from <src>, after prompting.
OpenBTS> help setlogfile
setlogfile <path> -- set the logging file to <path>.
OpenBTS> help testcall
testcall IMSI time -- initiate a test call to a given IMSI with a given paging time
OpenBTS> help tmsis
tmsis ["clear"] or ["dump" filename] -- print/clear the TMSI table or dump it to a file.
OpenBTS> help unconfig
unconfig key -- remove a config value
OpenBTS> help uptime
uptime -- show BTS uptime and BTS frame number.
OpenBTS> help version
version -- print the version string

OpenBTS> alarms
1547412313.2106 ALARM 3079476944 OpenBTS.cpp:129:main: OpenBTS starting, ver 2.6PUBLIC build date Feb 29 2012
OpenBTS> calls

0 transactions in table
OpenBTS> cellid
MCC=310 MNC=07 LAC=1000 CI=10
OpenBTS> chans
TN chan      transaction UPFER RSSI TXPWR TXTA DNLEV DNBER
TN type      id          pct    dB   dBm  sym   dBm   pct

OpenBTS> config
Asterisk.IP 127.0.0.1
Asterisk.Port 5060
CLI.Prompt OpenBTS>
Control.FailedRegistrationWelcomeShortCode 1000
Control.LUR.TMSIsAll
Control.NormalRegistrationWelcomeMessage Welcome to OpenBTS! AGPLv3 openbts.sf.net. Your IMSI is
Control.NormalRegistrationWelcomeShortCode 0000
Control.OpenRegistration
Control.OpenRegistrationWelcomeMessage Welcome to OpenBTS! AGPLv3 openbts.sf.net. Your IMSI is
Control.OpenRegistrationWelcomeShortCode 101
Control.TMSITable.MaxAge 72
Control.TMSITable.MaxSize 10000
Control.TMSITable.SavePath TMSITable.txt
GSM.AGCH.QMax 5
GSM.ARFCN 73
GSM.BCC 2
GSM.Band 900
GSM.CCD.ATT 1
GSM.CCD.CCCH_CONF 1
GSM.CI 10
GSM.CS.CELL_RESELECT_HYSTERESIS 3
GSM.CS.MS_TXPWR_MAX_CCH 0
GSM.CS.NECI 1
GSM.CS.RXLEV_ACCESS_MIN 0
GSM.LAC 1000
GSM.LURejectCause 0x04
GSM.MCC 310
GSM.MNC 07
GSM.MS.Power.Damping 50
GSM.MS.Power.Max 33
GSM.MS.Power.Min 5
GSM.MS.TA.Damping 50
GSM.MS.TA.Max 5
GSM.MaxExpectedDelaySpread 1
GSM.MaxSpeechLatency 2
GSM.NCC 0
GSM.NCCsPermitted 1
GSM.Neighbors 39 41 43
GSM.NumC1s 6
GSM.NumC7s 1
GSM.PagingReservations 0
GSM.PowerManager.MaxAttenDB 30
GSM.PowerManager.MinAttenDB  7
GSM.PowerManager.NumSamples 10
GSM.PowerManager.Period 6000
GSM.PowerManager.SamplePeriod 2000
GSM.PowerManager.TargetT3122 5000
GSM.RACH.AC 0
GSM.RACH.MaxRetrans 1
GSM.RACH.TxInteger 14
GSM.RADIO_LINK_TIMEOUT 15
GSM.RRLP.Accuracy 60
GSM.RRLP.Retries 1
GSM.RRLP.Timeout 4000
GSM.RSSITarget -15
GSM.RxGain 47
GSM.ShortName OpenBTS
GSM.ShowCountry
GSM.T3113 10000
GSM.T3122Max 255000
GSM.T3122Min 2000
GSM.T3212 12
GSMTAP.TargetIP 127.0.0.1
Indications.TargetIP 127.0.0.1
Indications.TargetPort 10202
Log.Alarms.Max 10
Log.Alarms.TargetIP 192.168.10.200
Log.Alarms.TargetPort 10101
Log.FileName openbts26.log
Log.Level INFO
Log.Level.CallControl.cpp INFO
Log.Level.MobilityManagement.cpp INFO
Log.Level.RadioResource.cpp INFO
PBX.Emergency 2101
RTP.Range 98
RTP.Start 16484
SIP.IP 127.0.0.1
SIP.Port 5062
SIP.RegistrationPeriod 7200
SIP.Timer.A 2000
SMS.DefaultDestSMSC 0000
SMS.FakeSrcSMSC 0000
Smqueue.IP 127.0.0.1
Smqueue.Port 5063
TRX.IP 127.0.0.1
TRX.LogFileName TRX26.log
TRX.LogLevel INFO
TRX.Path ../Transceiver52M/transceiver
TRX.Port 5700
TestCall.Port 28670
OpenBTS>
OpenBTS> configsave
<path> -- write the current configuration to a file
wrong number of arguments
OpenBTS> findimsi
usage: findimsi <imsiprefix>
bad argument(s)
OpenBTS> load
SDCCH load: 0/12
TCH/F load: 0/6
AGCH/PCH load: 0,0
Paging table size: 0
Transactions/TMSIs: 0,9
T3122: 2000 ms
OpenBTS> noise
noise RSSI is -42 dB wrt full scale
MS RSSI target is -15 dB wrt full scale
OpenBTS> notices

OpenBTS, Copyright 2008-2010 Free Software Foundation, Inc.
Release 2.6PUBLIC built Feb 29 2012
"OpenBTS" is a trademark of Kestrel Signal Processing, Inc.,
regsitered with the US Patent and Trademark Office.

Contributors:
  Kestrel Signal Processing, Inc.:
    David Burgess, Harvind Samra, Raffi Sevlian, Roshan Baliga
  GNU Radio:
    Johnathan Corgan
  Others:
    Anne Kwong, Jacob Appelbaum, Joshua Lackey, Alon Levy
    Alexander Chemeris, Alberto Escudero-Pascual
Incorporated GPL libraries and components:
  libosip2, liportp2, readline

This program comes with ABSOLUTELY NO WARRANTY.

This is free software; you are welcome to redistribute it
under the terms of AGPLv3.
Please see the COPYING file in the source code for information
about the AGPLv3 license and recommended procedures for compliance
with the Affero requirements of that license.

Use of this software may be subject to other legal restrictions,
including patent licsensing and radio spectrum licensing.
All users of this software are expected to comply with applicable
regulations and laws.

OpenBTS>
OpenBTS> page
OpenBTS> power
current downlink power -7 dB wrt full scale
current attenuation bounds 7 to 30 dB
OpenBTS> regperiod
T3212 is 12 minutes
SIP registration period is 120 minutes
OpenBTS> rxgain
current RX gain is 47 dB
OpenBTS> sendrrlp
<IMSI> <hexstring> -- send RRLP message <hexstring> to <IMSI>.
wrong number of arguments
OpenBTS> sendsms
<IMSI> <src> -- send SMS to <IMSI>, addressed from <src>, after prompting.
wrong number of arguments
OpenBTS> setlogfile
<path> -- set the logging file to <path>.
wrong number of arguments
OpenBTS> testcall
IMSI time -- initiate a test call to a given IMSI with a given paging time
wrong number of arguments



penBTS> tmsis
TMSI       IMSI            IMEI              age  used
0x4f4ca916 460001773117280               ? 49687d 49685d
0x4f4ca917 460023299225619               ? 49687d 49685d
0x4f4dffc1 460027029239684               ? 49685d 49685d
0x4f4dffc2 460000854117655               ? 49685d 49685d
0x54157766 460071773117280               ? 49702d   22d
0x54157767 460077029239694               ? 49702d 49702d
0x5889b0a2 460011671301367               ?   22d   22d
0x5b512297 310077029239681               ? 49689d 49689d
0x5b512298 310071773117280               ? 49689d 49689d

OpenBTS> uptime
Unix time 1547412768
uptime 7.58 minutes, frame 0:1147258
OpenBTS> version
release 2.6PUBLIC built Feb 29 2012
OpenBTS> unconfig
key -- remove a config value
wrong number of arguments
```
