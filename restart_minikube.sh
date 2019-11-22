#!/usr/bin/bash

minikube delete
rm -f ~/.kube/config
rm -rf ~/.minikube
systemctl enable kubelet.service
echo 1 > /proc/sys/net/bridge/bridge-nf-call-iptables
minikube start --vm-driver=none --registry-mirror=https://registry.docker-cn.com
