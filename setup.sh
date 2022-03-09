#!/bin/bash

#First update the system
echo "Start";
sudo apt update 
echo -e $TEXT_BLUE
echo 'APT update finished...'
echo -e $TEXT_RESET
sudo apt-get upgrade
echo -e $TEXT_GREEN
echo 'APT upgrade finished...'
echo -e $TEXT_RESET
sudo apt autoremove
echo 'Cleaning update'

#Install the dependencs
echo 'INSTALLING GIT'
sudo apt install git
echo 'INSTALLING NODE'
sudo apt install nodejs npm
echo 'DOWNLOADING DEPENDENCIES FOR VS CODE '
echo -e $TEXT_GREEN
sudo apt install gnupg2 software-properties-common apt-transport-https curl
echo 'IMPORTING MICROSOFT GPG KEY ON SUCCESS WILL RETURN YES'
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo 'ADDING VS CODE REPO'
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt update
sudo apt install code
echo 'INSTALLED CODE'
echo -e $TEXT_GREEN

