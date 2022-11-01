#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl restart kubelet

echo "Run kubeadm join command."
