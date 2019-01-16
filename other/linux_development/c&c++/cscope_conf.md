# cscope conf

###### 0X01 [ctags.sh](https://s3.amazonaws.com/rfagora/sooof/software/sh/development/tags.sh)

```sh
###tags.sh
#!/bin/sh
find $1 -name "*.h" -o -name "*.c" -o -name "*.cc" > cscope.list
cscope -bkq -i cscope.list
ctags -R
```
