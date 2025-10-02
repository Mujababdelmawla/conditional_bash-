#!/bin/bash 

tool=python3

# check the system if the $tool is exists or not 

if command -v $tool &> /dev/null; then 

	echo "the $tool is already exists "

else 
	echo "the $tool is not installed ....installing the $tool "

	
# check the operating system if it's macos or linux 

if [["$(uname)"=="Darwin"]]; then 

# install the $tool using homwbrew for macos 

brew install $tool

elif [["$(uname)"=="linux"]]; then 

# install the $tool using package manager for linux 

sudo apt update 
sudo apt install -y $tool

else
	echo "unsupported os ....."

fi

# check if the $tool successfully installed 

if command -v $tool &> /dev/null; then 
	echo "the $tool has been successfully installed ..."
	
else 
	echo "fialed to install the $tool"
fi
fi

