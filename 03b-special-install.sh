#!/bin/bash

#special

# fonts

sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install fontconfig-infinality


# *************************************
# docker 
# *************************************

# add user
sudo groupadd docker

sudo gpasswd -a ${USER} docker


# *************************************
# simple install
# *************************************
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

sudo apt-get update

sudo apt-get install -y lxc-docker


exit

# *************************************
# on luks install
# *************************************

#stop the docker daemon
#docker ps -q | xargs docker kill
#service docker stop
##if it exists
#cd /var/lib/docker/devicemapper/mnt
#umount ./*
#mv /var/lib/docker $dest
#ln -s $dest/docker /var/lib/docker
##modify defaults options in docker in /etc/defaults/docker
#DOCKER_OPTS="-g $(readlink -f /var/lib/docker)"

sudo mkdir -p /home/dockerio/
sudo ln -s /home/dockerio /var/lib/docker

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install -y lxc-docker

sleep 2

echo "stoping service"
sudo service docker stop

sleep 2

echo 'DOCKER_OPTS="-g $(readlink -f /var/lib/docker)"' 
echo '/etc/default/docker'

