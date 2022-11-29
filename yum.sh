#!/bin/bash
echo "what pkg do you want to install ?"
read pkg 
sudo yum install $pkg -y >> /tmp/yum.log
sudo cat /tmp/yum.log | grep "Nothing to do"
message="Nothing to do"
if [ $message -eq "Nothing to do" ] 
then
echo "pkg is already installed "
else "continue with the installation"
sudo $pkg yum -y >> /tmp/yum.log
cd /tmp
sudo gzip yum.log