#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt full-upgrade -y 
sudo apt autoremove -y

#install brave browser
sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

#install vscode
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo apt update
sudo apt install code -y

#install git
sudo apt install git -y

#install nodejs
sudo apt update
sudo apt upgrade -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo npm install -g n
sudo n install lts

#install DB Browser for SQLite
sudo apt update
sudo apt install sqlitebrowser -y

#Install Postman
sudo apt update
sudo apt install snapd -y
sudo snap install postman -y

#Install Docker
sudo apt install curl -y
curl -fsSL https://get.docker.com/ | bash


