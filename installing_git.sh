#!/bin/bash 

tool=git 

# check if the $tool exists 

if command -v $tool &> /dev/null; then 

	echo "the $tool is already exists ..!"

else 

	echo "the $tool is not installed .....instlling the $tool !!!"


# check the operating system if it's macos or linux 


if [["$(uname)"=="Darwin"]]; then 

# install the $tool using homebrew for macos 

brew install $tool


elif [["$(uname)"=="linux"]]; then 

# install the $tool using backage manager for linux system

sudo apt update 
sudo apt install -y $tool

else 
	echo "unsupported system.....!"
fi	

# check if the $tool is successfully installed or not 
 
if command -v $tool &> /dev/null; then 
	echo "the $tool has been successfully installed ..."

else 
	echo "failed to installl the $tool ..."
fi 
fi 
