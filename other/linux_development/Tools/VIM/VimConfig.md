# Vim Config

###### 0X01 --- ：

* 1、安装ubuntu-14.04、 ubuntu-16.04

* 2、按control+ait+t启动终端

```bash
$sudo su
wget https://raw.githubusercontent.com/iplinkme/sooof_workspace/master/WorkSH/UbuntuConf/install_vim_conf.sh
chmon 755 *.sh
./install_vim_conf.sh

```

* 3、快速配置ctags
```
wget https://raw.githubusercontent.com/iplinkme/sooof_workspace/master/WorkSH/UbuntuConf/runVimforProject.sh
chmod 755 runVimforProject.sh
./runVimforProject.sh $ProjectPATH


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


### FAQ：

如果遇到duplicate database
信息如下
```
line   42:
E568: duplicate cscope database not added
Press ENTER or type command to continue
```
那么就是vim的全局配置中也有cscope add cscope.out
和cscope_maps.vim或者用户的vim配置文件中的cscope add cscope.out冲突了

**解决方法：**

a.you can adding this line "set nocscopeverbose " to your ~/.vimrc file as well. （我是采用了这种方法）

b.To fix this issue, you will need to simply edit the file "~/.vim/plugin/cscopemenu.vim" (or whatever your plugin is named) and edit the line : 
set cscopeverbose 
