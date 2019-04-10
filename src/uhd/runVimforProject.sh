#!/bin/bash
echo "./runVimforProject.sh ProjectPATH"
#echo $1
#mv runCtagsCscope.sh $1
cd $1
#echo `pwd`
#sudo ls ./runCtagsCscope.sh
wget https://raw.githubusercontent.com/iplinkme/sooof_workspace/master/WorkSH/UbuntuConf/runCtagsCscope.sh
chmod 755 ./runCtagsCscope.sh
./runCtagsCscope.sh
echo "run Ctags&Cscope Config done"
