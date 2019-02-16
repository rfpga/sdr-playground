# Vim Config

###### 0X01 --- ：

* 1、安装ubuntu-14.04

* 2、按control+ait+t启动终端

```bash
$sudo su
mkdir VimConf
cd VimConf
wget https://s3.amazonaws.com/rfagora/sooof/software/development/tools/VIM/VimConf/README
wget https://s3.amazonaws.com/rfagora/sooof/software/development/tools/VIM/VimConf/h.vimrc
wget https://s3.amazonaws.com/rfagora/sooof/software/development/tools/VIM/VimConf/vim.tar.gz
wget https://s3.amazonaws.com/rfagora/sooof/software/development/tools/VIM/VimConf/install_vim_conf.sh
chmon 755 *.sh
./install_vim_conf.sh

```

* 3、快速配置ctags
```
wget https://s3.amazonaws.com/rfagora/sooof/software/sh/development/tags.sh
chmod 755 tags.sh
./tags.sh


vim -t main 敲tab键
ctrl+]进入函数
ctrl+t返回
```

* 看到项目目录下面有以下的文件就可以了

![vim使用进阶](https://s3.amazonaws.com/rfagora/sooof/software/development/tools/VIM/VimPictures/ctagscscope.png)


* 、接下来是生成tags文件与cscope文件了。
在项目的根目录执行下面的三个命令

```等待测试
ctags -R -f .tags
find . -name “.h” -o -name “.c” -o -name “.cc” -o -name “.S” -o -name “.ch” -o -name “.cpp” > cscope.files
cscope -bkq -i cscope.files
```


###### 0X02 --- Books：

* 1、
