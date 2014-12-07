ubuntu_hacks
============

A set of scripts/commands commonly used on a freshly installed ubuntu (12.04.2 LTS)

1- Synapse Indicator for Ubuntu 14.04
a) sudo vim /etc/apt/sources.list
b) ## add elementary
deb http://ppa.launchpad.net/elementary-os/daily/ubuntu trusty main
deb-src http://ppa.launchpad.net/elementary-os/daily/ubuntu trusty main

c)sudo gpg --keyserver pgpkeys.mit.edu --recv-key BF36996C4E1F8A59

d)sudo gpg -a --export BF36996C4E1F8A59 | sudo apt-key add -

  sudo add-apt-repository ppa:noobslab/indicators
  
  sudo apt-get update
  
  sudo apt-get install indicator-synapse
  

2- Assign hotkey

  sudo apt-get install xdotool
  
  xdotool getmouselocation  
  
  xdotool mousemove 1065 10 click 1 mousemove restore
  
  
