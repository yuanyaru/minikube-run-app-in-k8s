#!/usr/bin/bash

# 禁用swap分区
swapoff -a
echo 1 > /proc/sys/net/bridge/bridge-nf-call-iptables

# 安装docker
./docker_install.sh

# 安装kubectl
cat > /etc/yum.repos.d/kubernetes.repo << EOF
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg
EOF

yum install -y kubectl
systemctl enable kubelet.service

# 安装minikube
curl -Lo minikube http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v1.4.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

# 启动minikube
minikube start --vm-driver=none --registry-mirror=https://registry.docker-cn.com
