#!/bin/bash
echo "Start";
ls -l
sudo apt update 
echo -e $TEXT_BLUE
echo 'APT update finished...'
echo -e $TEXT_RESET
sudo apt-get upgrade
echo -e $TEXT_GREEN
echo 'APT upgrade finished...'
echo -e $TEXT_RESET

echo "end";