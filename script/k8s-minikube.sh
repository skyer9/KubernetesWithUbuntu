#!/bin/bash

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

sudo usermod -aG docker $USER

echo "exit and reconnect ssh"
echo "Run : minikube start"