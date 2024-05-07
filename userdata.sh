#!/bin/bash 
sudo yum install -y git
sudo yum install -y docker 
sudo systemctl start docker
sudo systemctl enable docker 
sudo usermod -aG docker ec2-user 
sudo chmod 666 /var/run/docker.sock 
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose 
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose 
git clone https://github.com/sumanthgangireddyGS/wordpress.git 
cd wordpress/
docker-compose up -d
