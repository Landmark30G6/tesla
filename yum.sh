#!/bin/bash
echo "what pkg do you want to install?"
read pkg 
sudo yum install $pkg -y >> /tmp/yum.log
sudo cat /tmp/yum.log | grep "Nothing to do"
if [[ $message == "Nothing to do" ]] 
then
message="Nothing to do"
else
echo "continue with the installation"
fi
echo "pls enter another pkg"
read pkg
sudo yum install $pkg -y >> /tmp/yum.log
sudo cat /tmp/yum.log | grep "Complete!"
if [[ $message == "Complete!" ]]
then
message="Complete!"
else
message="Nothing to do"
echo "your pkg is installed"
fi