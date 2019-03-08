# Ubuntu CMD


###### 0x01 --- dd:

将ISO文件写入到U盘：
```
dd if=ubuntu-16.0.3-desktop-amd64.iso of=/dev/sdb

dd if=*/*.iso   of=/dev/sdb  bs=4M  (数据块大小，每个数据块只能存一个文件的数据)

 sudo dd if=~/Downloads/ubuntu-16.04-desktop-amd64.iso of=/dev/sdb status=progress  小技巧，加上status=progress 可以看到进度
```

格式化U盘：

```
mkfs.fat /dev/sdb -I
```
