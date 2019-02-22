#!/bin/bash
tar xf gnuradio.tar.bz2
rm -rf gnuradio/build
mkdir  gnuradio/build
cd  gnuradio/build
cmake ../
make
sudo make install
sudo ldconfig
echo "install gnuradio done!!!!!"
