#!/bin/bash
echo "### Install UHD GNURadio ###"
mkdir 14.04
cd 14.04
echo "### Download SH and tar ###"
wget https://raw.githubusercontent.com/iplinkme/sooof_workspace/master/WorkSH/Ubuntu1404/install_uhd_1404.sh
wget https://raw.githubusercontent.com/iplinkme/sooof_workspace/master/WorkSH/Ubuntu1404/install_gnuradio_1404.sh
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/archives1404.tar
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/uhd.tar.bz2
wget https://s3.amazonaws.com/rfagora/image/SDR/InstallUHDGNUradiotoUbuntu1404/gnuradio.tar.bz2
echo "### update ###"
sudo apt-get update
sudo tar xf archives1404.tar -C /
echo "### install git vim ssh ###"
sudo apt-get install -y git vim openssh-server openssh-client
echo "### install git ctags cscope ###"
sudo apt-get install ctags cscope -y
echo "### install vnc ###"
sudo apt-get install x11vnc -y
sudo ./020_install_uhd.sh
sudo ./025_install_gnuradio.sh
sudo /usr/local/lib/uhd/utils/uhd_images_downloader.py
