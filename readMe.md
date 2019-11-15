## 使用 Minikube 在 Kubernetes 中运行应用

### 目标
* 将简单的Hello World Node.js应用转换为在Kubernetes上运行的应用
* 如何使用自己开发的代码，将其转换为Docker容器镜像
* 然后在 Minikube 上运行该镜像，Minikube能够在本地非常简单的创建Kubernetes
### 准备工作
* 一台 centos7 虚拟机
* 本实验是在虚拟机中运行的Linux做测试，由于虚拟机管理程序不允许嵌套虚拟化，所以，无需再安装驱动程序，使用None(裸机)驱动程序
### 运行
1. start_minikube.sh
执行该脚本，在 centOS7 中构建一个单节点的k8s环境
* 验证minikube运行环境
* 在docker上预加载Kubernates，验证docker
* 下载kubelet、kubeadm(当前实验版本为v1.16)
* 拉取Kubernates镜像
* 启动Kubernates
看到以下结果，说明启动成功！
![Image text](images/start_minikube.jpg)
2. restart_minikube.sh
先删除现有的 minikube 及相关配置文件，再重新启动 minikube