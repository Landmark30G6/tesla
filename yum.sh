#!/bin/bash
echo "what do you want to install ?"
read install 
sudo yum $install -y >> /tmp/yum.log
sudo cat /tmp/yum.log | grep "Nothing to do"
message="Nothing to do"
if [ $message -eq "Nothing to do" ] 
then
echo "pkg is already installed "
else "continue with the installation"
sudo yum -y >> /tmp/yum.log
cd /tmp
sudo gzip yum.log