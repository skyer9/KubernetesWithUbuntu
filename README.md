# Ubuntu 20.04 에서 Kubernetes 설치하기

## Base 설치

```bash
git clone https://github.com/skyer9/KubernetesWithUbuntu.git
sudo sh ./KubernetesWithUbuntu/script/k8s-base.sh
```

## Master Node

```bash
sudo sh ./KubernetesWithUbuntu/script/k8s-master.sh
```

## Worker Node

```bash
sudo sh ./KubernetesWithUbuntu/script/k8s-worker.sh
```

## Minikube

```bash
sudo sh ./KubernetesWithUbuntu/script/k8s-minikube.sh
```

로그아웃 후 재접속 후 아래 명령을 실행해 줍니다.

```bash
minikube start
```

```bash
# get helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# enable helm
minikube addons list
minikube addons enable helm-tiller
```
