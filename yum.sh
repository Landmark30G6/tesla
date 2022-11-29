#!/bin/bash
echo "what pkg do you want to install?"
read pkg 
sudo yum install $pkg -y >> /tmp/yum.log
sudo cat /tmp/yum.log | grep "Nothing to do"
if [ $message -eq "Nothing to do" ] 
then
message="Nothing to do"
echo "pkg is already installed"
else
echo "continue with the installation"
echo "enter your pkg to continue installation"
fi
read pkg
sudo $pkg yum -y >> /tmp/yum.log
sudo cat /tmp/yum.log | grep "Complete!"
echo "your pkg is installed"
cd /tmp
sudo gzip yum.log