
useradd -m -s /bin/bash -U niklas
apt update
apt install sudo
groupadd admin
adduser niklas admin
passwd niklas
su niklas

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt update
sudo apt upgrade
apt-cache policy docker-ce
sudo apt install docker-ce
sudo service start docker
sudo cat /var/log/docker
sudo usermod -aG docker ${USER}
