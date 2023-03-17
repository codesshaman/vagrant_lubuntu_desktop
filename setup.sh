#!/bin/bash

## Install docker

echo "[Docker] : installing..."

apt update && apt install -y \
    make \
    curl \
    python \
    docker \
    docker-compose

chmod 666 /var/run/docker.sock

echo "[Docker] : add user to vagrant group..."
sudo usermod -aG docker vagrant

cd /home/vagrant/docker

su - vagrant -c 'cd docker && docker-compose up -d --build'

echo "[machine : $(hostname)] has been setup succefully!"
