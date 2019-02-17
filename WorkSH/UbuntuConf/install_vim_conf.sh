#!/bin/bash
echo "### Install Vim Config ###"
sudo apt-get install ctags cscope -y
mkdir VimConf
cd VimConf
echo "### Download SH and tar ###"
wget https://s3.amazonaws.com/rfagora/sooof/software/development/tools/VIM/VimConf/README
wget https://s3.amazonaws.com/rfagora/sooof/software/development/tools/VIM/VimConf/h.vimrc
wget https://s3.amazonaws.com/rfagora/sooof/software/development/tools/VIM/VimConf/vim.tar.gz

cp h.vimrc  ~/.vimrc
echo "set directory=/Users/$USER/.vim/tmp_file" | sed 's#/raylea/\/##' >> ~/.vimrc
echo "cp change  vimrc done"
tar xf vim.tar.gz -C ~/
echo "tar vim.tar.gz done"
echo "vim conf install done"
