# UBUNTU开机画面的修改 && 背景图片


### 0X01 --- 背景图片：

```
sudo cp ~/Desktop/IPlink /usr/share/backgrounds/warty-final-ubuntu.png
```

### 0X02 --- UBUNTU开机画面的修改 ：

这里所讲的ubuntu开机画面的修改指的是9.10以后的版本，因为在9.10之后，ubuntu采用的是`plymouth`，取代了原先的`xsplash`，所以只适用于9.10之后的版本。

Ubuntu12.04（这里以12.04版本为例）的plymouth设定文件放在/lib/plymouth目录内，与主题相关的设定文件放置于/lib/plymouth/theme，设定主题样式文件为default.plymouth。其内容大致如下：

```
[Plymouth Theme]
Name=Ubuntu Logo
Description=A theme that features a blank background with a logo.
ModuleName=script
[script]
ImageDir=/lib/plymouth/themes/ubuntu-logo
ScriptFile=/lib/plymouth/themes/ubuntu-logo/ubuntu-logo.script
```

其内容还是很容易读懂的：
* 第一部分`[Plymouth Theme]`中的`ModuleName`指示`plymouth`载入它的`script.so`模组处理主题。基本上这一部分的内容是固定不变的。
* 第二部分[script]就是配合script.so模组的设定项目。（这里不做具体的介绍）
ps：当然如果你之前执行过`sudo update-alternatives --config default.plymouth`修改了默认 的开机动画，那`default.plymouth`中的内容多少会有不同。

修改方法:

* 快速修改方法

如果你只是要简单的修改一下开机时的背景或者是ubuntu的logo，那只要找相应的图片，把它复制到`/lib/plymouth/themes/ubuntu_logo`目录下替换掉原先的`ubuntu_logo.png`即可（注意，一定要是png的图片格式，不然的话开机后可能什么都不显示），当然如果你想修改进入系统时下面加载的小圆点，也只要找来相对的两张图片替换掉原来的就可以了。

参考命令：

```
将560578321853480297.png图片复制到根目录下
$ cp 560578321853480297.png  /
将”560578321853480297.png”重命名”ubuntu_logo.png”
$ mv  560578321853480297.png  ubuntu_logo.png
删除”/lib/plymouth/themes/ubuntu-logo/ubuntu-logo.png”
$ rm /lib/plymouth/themes/ubuntu-logo/ubuntu-logo.png
将根目录下的” ubuntu_logo.png”复制到”/lib/plymouth/themes/ubuntu-logo/”
$ cp /ubuntu_logo.png   /lib/plymouth/themes/ubuntu-logo/
将根目录下的’’ ubuntu_logo.png”重命名”ubuntu_logo16.png”
$ mv  /ubuntu_logo.png  /ubuntu_logo16.png
删除”/lib/plymouth/themes/ubuntu-logo/ubuntu-logo16.png”
$ rm /lib/plymouth/themes/ubuntu-logo/ubuntu-logo16.png
将根目录下的” ubuntu-logo16.png”移到目录” /lib/plymouth/themes/ubuntu-logo/”
$ mv  /ubuntu_logo16.png  /lib/plymouth/themes/ubuntu-logo/
完成上面步骤，电脑重启即可
```