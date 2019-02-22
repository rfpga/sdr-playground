#!/bin/bash
sudo apt-get -y docker.io
#sudo service docker status
sudo service docker start
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
echo "install docker done!!!!"
