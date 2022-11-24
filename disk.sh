#!/bin/bash
#check system resources & usage 
df -h >> /tmp/disk.log
uptime >> /tmp/disk.log
free -m >> /tmp/disk.log