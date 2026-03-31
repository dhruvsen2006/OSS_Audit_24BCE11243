#!/bin/bash

echo "############################################"
echo "            Open Source Audit               "
echo "############################################"

echo "Student : Dhruv Sen"
echo "Project : Git Version Control"

echo "############################################"

echo "OS : $(uname -o) $(lsb_release -rs 2>/dev/null || echo Rolling)"
echo "Kernel : $(uname -r)"
echo "User : $(whoami)"
echo "Home : $HOME"

uptime_pretty=$(uptime -p)
echo "OS Uptime : $uptime_pretty"

echo "Latest Date/Time : $(date)"

echo "License Info : This Linux system is based on the Linux kernel, which is licensed under GNU GPL v2."

echo "############################################"