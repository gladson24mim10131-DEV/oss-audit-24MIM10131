#!/bin/bash

# Script 1: System Identity Report
# Author: Your Name
# Course: Open Source Software

STUDENT_NAME="YOUR_NAME"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d | cut -f2)
DATE=$(date)

echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"

echo "Software Choice: $SOFTWARE_CHOICE"
echo "Distribution   : $DISTRO"
echo "Kernel Version : $KERNEL"
echo "Current User   : $USER_NAME"
echo "System Uptime  : $UPTIME"
echo "Date & Time    : $DATE"

echo ""
echo "This operating system is open source and mainly licensed under GPL."
