#!/bin/bash
echo "what pkg do you want to install ?"
read pkg 
sudo yum install $pkg -y >> /tmp/yum.log
sudo cat /tmp/yum.log | grep "Nothing to do"
if [ $message -eq "Nothing to do" ] 
then
message="Nothing to do"
echo "pkg is already installed "
echo "no work to do ,get a beer"
elif 
echo "continue with the installation"
then
echo "enter your pkg to continue installation"
read pkg
fi
sudo $pkg yum -y >> /tmp/yum.log
cd /tmp
sudo gzip yum.log