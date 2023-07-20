# useful cli

work


```
下载：
git clone https://github.com/iplinkme/sooof_workspace.git

测试github是否联通：
ssh -T git@github.com

上传：
将自己的修改push到github上：
git add .
git commit -m "first commit"
git push -u origin master
or
git add --all
git commit -m "first commit"
git push -u origin master

更新：
git pull: 更新当前分支(将本地的文件更新到最新)
git pull origin master: 更新 origin remote 的 master 分支
git fetch: 获取服务器端的改动，比如其他用户新建了一个分支并push到了服务器，运行这个命令之后会得到这个分支的信息

git撤销已经push到远端的commit：
git log -2
git reset --hard d3b87bab6d216299d7167f9e53ac1ed43c6a1xxx
git push origin master --force

```

**find的使用:**

```
find ../ -name .DS_Store -exec rm {} \;
find ~/ -name '.DS_Store' -delete 删除当前目录的.DS_store
find . -type f -exec stat --format '%Y :%y %n' "{}" \; | grep -v cache | sort -nr | cut -d: -f2- | head
find . -type f -name "*.c" | xargs stat --format "%y %n" |sort -rn |head

搜索隐藏文件，并删除
find ./ -name "\.*"
find ./ -name "\.*" -exec rm {} \;
```
**搞定讨厌的.DS_store**

删除当前目录的.DS_store

```
find . -name '*.DS_Store' -type f -delete
```

删除所有目录的.DS_store

```
sudo find ./ -name “.DS_Store” -depth -exec rm {} \;
```

禁止.DS_store生成：

```
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
```

恢复.DS_store生成：

```
defaults delete com.apple.desktopservices DSDontWriteNetworkStores
```
