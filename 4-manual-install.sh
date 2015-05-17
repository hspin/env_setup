#!/bin/bash

#special

# fonts

sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y fontconfig-infinality

# pulse audio volume control - install pulse audio
sudo apt-get install -y pavucontrol
# online music
sudo apt-get install -y radiotray

sudo apt-get install -y encfs

sudo apt-get install -y libnotify-bin
sudo apt-get install -y dunst

# might need to uninstall original daemon
# sudo apt-get remove xfce4-notifyd
# sudo apt-get remove notification-daemon
#sudo vi /usr/share/dbus-1/services/org.xfce.xfce4-notifyd.Notifications.service
#Then replace the line
#	Exec=/usr/lib/x86_64-linux-gnu/xfce4/notifyd/xfce4-notifyd
#with this one
#	Exec=/usr/bin/dunst

sudo apt-get install -y locales
sudo cp /usr/share/zoneinfo/America/New_York /etc/localtime 
sudo dpkg-reconfigure locales 
sudo locale-gen en_US.UTF-8 
sudo /usr/sbin/update-locale LANG=en_US.UTF-8

# tagspaces

sudo apt-get install -y msttcorefonts
sudo fc-cache -f -v
