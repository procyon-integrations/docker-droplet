#!/bin/bash
echo "initializing..." > ~/setup.txt

# Install Docker Engine
sudo apt update
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Set up doctl

snap install doctl
sudo snap connect doctl:dot-docker

export DIGITALOCEAN_ACCESS_TOKEN="${token}"
doctl auth init --access-token $DIGITALOCEAN_ACCESS_TOKEN
doctl registry login

# Run the docker image

docker pull ${docker_image}
docker run -d ${docker_run_flags} ${docker_image}


# Finish initialization
echo "done" > ~/setup.txt