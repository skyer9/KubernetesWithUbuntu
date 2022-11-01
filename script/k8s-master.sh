#!/bin/bash

sudo systemctl daemon-reload
sudo systemctl restart kubelet

# bug fix
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd

sudo kubeadm init

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# network 애드온
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml

source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc
