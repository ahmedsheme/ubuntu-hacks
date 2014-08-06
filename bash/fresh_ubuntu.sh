#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

#Enable multiverse repos
gksu gedit /etc/apt/sources.list

#then uncomment these
deb http://us.archive.ubuntu.com/ubuntu/ oneiric multiverse
deb http://us.archive.ubuntu.com/ubuntu/ oneiric-updates multiverse

sudo apt-get update

#Enable universe repos
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"

sudo add-apt-repository ppa:bumblebee/stable
sudo apt-get update 
sudo apt-get install bumblebee bumblebee-nvidia virtualgl linux-headers-generic-lts-raring

sudo reboot

sudo apt-get install terminator
gconftool --type string --set /desktop/gnome/applications/terminal/exec terminator






