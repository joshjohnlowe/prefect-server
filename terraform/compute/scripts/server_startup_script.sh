#!/bin/bash

# Install dependencies 
sudo apt-get update
sudo apt-get install python3.6 -y
sudo apt-get install python3-pip -y
sudo apt-get install python3-venv -y
sudo apt update
sudo apt install docker.io -y

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Prefect Server, setup a virtual environment and install dependencies
git clone https://github.com/PrefectHQ/prefect
python3 -m venv prefect-env
source prefect-env/bin/activate
cd prefect && python3 -m pip install .
