#!/bin/bash

echo "Install vim? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo apt-get install vim
fi
echo "Install g++? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo apt-get install g++
fi
echo "Install make? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo apt-get install make
fi
echo "Install git? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo apt-get install git
fi
echo "Install klavaro? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo apt-get install klavaro
fi

echo "Install jre version 11 for Ubuntu 16/18.04? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	curl -O https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
	tar zxvf openjdk-11.0.2_linux-x64_bin.tar.gz
	sudo mv jdk-11* /usr/local/
	sudo echo "
		export JAVA_HOME=/usr/local/jdk-11.0.2
		\nexport PATH=$PATH:$JAVA_HOME/bin" >> /etc/profile.d/jdk.sh
	source /etc/profile
fi

#zoom
echo "Install zoom? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	wget -O $HOME/zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
	cd Downloads
	sudo dpkg -i zoom.deb
fi
echo "Install KTurtle? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo apt-get install kturtle
fi
#telegram
echo "Install telegram desktop? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo add-apt-repository ppa:atareao/telegram
	sudo apt update && sudo apt install telegram
fi
echo "Install inscape? 
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo apt-get install inkscape
fi
echo "Install scrcpy?
	Enter yes or no"
read if_true
if [[ $if_true = 'yes' ]]
then
	sudo apt-get install scrcpy
fi
#by Nairi for Manvel dzadza
