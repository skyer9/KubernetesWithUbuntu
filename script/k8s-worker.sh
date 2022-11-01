#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl restart kubelet

# bug fix
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd

echo "Run kubeadm join command."
