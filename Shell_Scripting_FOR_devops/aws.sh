#!/bin/bash


install_aws(){
	if command -v aws &> /dev/null
	then
		echo "aws cli already present"
		exit 0
	fi


echo "Downloading aws cli....."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awsv2.zip"


echo "Check Download"
if [ ! -f "awsv2.zip" ]; then
	echo "download failed"
	exit 1
fi
echo "Unzipping..."
unzip -o awsv2.zip

echo "check folder"
if [ ! -d "aws" ]; then
	echo "unzip failed"
	exit 1 
fi


echo "installing aws cli...."
sudo ./aws/install

echo "all done done"
}

install_aws



_
