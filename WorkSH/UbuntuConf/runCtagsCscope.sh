#!/bin/bash
find $1 -name "*.h" -o -name "*.c" -o -name "*.cc" > cscope.list
cscope -bkq -i cscope.list
ctags -R
