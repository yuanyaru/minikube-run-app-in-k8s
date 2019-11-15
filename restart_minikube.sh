#!/usr/bin/bash

minikube delete
rm -f ~/.kube/config
rm -rf ~/.minikube
minikube start --vm-driver=none --registry-mirror=https://registry.docker-cn.com
