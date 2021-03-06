#!/usr/bin/env bash

#
# Varaibles used below
#

HOME=/home/vagrant

#
# Clone this repo, sharing folders don't always work
#

sudo su vagrant -c "cd $HOME && git clone https://github.com/colmsjo/docker.git"


#
# This script installs the necessary stuff for the docker host.
# Images for the containers are built with Dockerfiles (see at the bottom)
#

#sudo apt-get update

#
# Install docker.io
#


sudo pacman -S --noconfirm --needed base-devel

cd wget -O /tmp/yaourt-1.3.tar.gz http://mir.archlinux.fr/~tuxce/releases/yaourt/yaourt-1.3.tar.gz
cd tar -xzf /tmp/yaourt-1.3.tar.gz
cd /tmp; makepkg -s

#sudo apt-get install -y python-software-properties software-properties-common python-pip python-dev libevent-dev
#sudo add-apt-repository ppa:dotcloud/lxc-docker
#sudo apt-get update
#DEBIAN_FRONTEND=noninteractive sudo apt-get install -y lxc-docker

# Need to run docker with other flags, this file need to be updated once the machine is up
#sudo cp $HOME/docker/etc/init/docker.conf /etc/init
#sudo su vagrant -c "echo alias docker=\'docker -H=tcp://127.0.0.1:4243\' >> $HOME/.profile"
#sudo service docker restart

#
# Install redis, used by hipache and redis-dns
#

#sudo apt-get install -y redis-server


#
# Nifty tools
#

#sudo apt-get install -y git unzip s3cmd curl dkms postgresql-client-common postgresql-client-9.1 mysql-client supervisor


#
# Install NodeJs
#

#sudo apt-get update -y
#sudo apt-get install -y python g++ make software-properties-common
#sudo add-apt-repository -y ppa:chris-lea/node.js
#sudo apt-get update -y
#sudo apt-get install -y nodejs


#
# Install CoffeeScript
#

#sudo apt-get install -y coffeescript


#
# Install NodeJs Jacc
#

#sudo npm install jacc -g


#
# Install hipache and redis-dns directly instead of using Jacc
#

#sudo npm install redis-dns -g --production
#sudo cp $HOME/docker/usr/lib/node_modules/redis-dns/redis-dns-config.json /usr/lib/node_modules/redis-dns
#sudo cp $HOME/docker/etc/init/redis-dns.conf /etc/init
#sudo service redis-dns restart

#sudo npm install hipache -g --production
#sudo cp $HOME/docker/usr/lib/node_modules/hipache/hipache-config.json /usr/lib/node_modules/hipache
#sudo cp $HOME/docker/etc/init/hipache.conf /etc/init
#sudo service hipache restart


#
# Install grunt, used for nodejs development
#

#sudo npm install grunt grunt-cli -g


# Use the local nameserver and then google's
# NOTE: sometimes usefull when using mobile broadband
#sudo sh -c 'echo "dns-nameservers localhost 8.8.8.8" >> /etc/network/interfaces'


#
# Setup ubuntu env
#

#sudo sh -c "cat $HOME/docker/etc/environment >> /etc/environment"
#sudo sh -c "cat $HOME/docker/etc/sudoers >> /etc/sudoers"
