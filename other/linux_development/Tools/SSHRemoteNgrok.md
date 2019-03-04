# 基于ngrok实现ssh远程内网传透

基于ngrok实现内网穿透

* 1. 下载ngrok客户端

网址：https://dashboard.ngrok.com/get-started

* 2. 启动ngrok客户端

 * 2.1 解压

```
$ unzip /path/to/ngrok.zip
```

 * 2.2 链接个人账户

```
$ ./ngrok authtoken 3UzhimXQAsyvdrXrwZaEx_56QKuJAPQdRgz4M4REc2Y
```

 * 2.3 启动ngrok

```
$ ./ngrok tcp 22
```

* 3.查看个人ngrok映射地址

网址：https://dashboard.ngrok.com/status
没有注册ngrok账户的，自行注册，然后登录
在status栏有客户端映射地址信息：

5.在电脑上使用ssh登录验证

```
ssh -p 18194 test@0.tcp.ngrok.io
```
