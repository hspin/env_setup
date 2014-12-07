#!/bin/bash

#special
#sudo apt-get install -y lxc-docker

# pulse audio volume control - install pulse audio
sudo apt-get install pavucontrol
# online music
sudo apt-get install radiotray

sudo apt-get install libnotify-bin
sudo apt-get install dunst

#sudo vi /usr/share/dbus-1/services/org.xfce.xfce4-notifyd.Notifications.service
#Then replace the line
#	Exec=/usr/lib/x86_64-linux-gnu/xfce4/notifyd/xfce4-notifyd
#with this one
#	Exec=/usr/bin/dunst


#sudo apt-get install locales
#cp /usr/share/zoneinfo/America/New_York /etc/localtime 
#dpkg-reconfigure locales 
#locale-gen en_US.UTF-8 
#/usr/sbin/update-locale LANG=en_US.UTF-8


# robomongo
# tagspaces
# zulu-crypt
