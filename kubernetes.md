# List of kubernetes Documents
  * [kubernetes.io](https://kubernetes.io/)

## Note of Kubernetes for the Absolute Beginners - Hands-on
  * 使用 VM : [VirtualBox](https://www.virtualbox.org/)
  * 使用 OS, ubuntu。由 osboxes 來下載 VM image
  * network setting 方式
    * using NAT
    * 設定 port-forwarding 來由 host 連到 guest 中

### 有安裝的 package
  * openssh-server
  * net-tools
  * docker
 
### 可以跑的 docker sample & command
```
  $ docker version
  $ docker run hello-world
  $ docker run docker/whalesay cowsay hi
```

### 在 local machine 中，跑 kubernetes - all in one machine
  * 由 kubernetes.io 中的 Document -> Setup 來搜尋資料
  * 使用 Minikube 來跑
```
Kubernetes Documentation 
Concepts: https://kubernetes.io/docs/concepts/

Kubernetes Documentation 
Setup: https://kubernetes.io/docs/setup/pick-right-solution/

Kubernetes Documentation - Minikube 
Setup: https://kubernetes.io/docs/getting-started-guides/minikube/
```
  * $ kubectl version

### 用 kubeadm 來跑 cluster
  * Link to kubeadm installation 
    * instructions: https://kubernetes.io/docs/setup/independent/install-kubeadm/
  * Using [flannel](https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/#tabs-pod-install-4) for pod network

### Run on Google Cloud Platform
  * Kubernetes on Google Cloud: https://cloud.google.com/kubernetes-engine/docs/

## List of OS information
  * [OS Box](https://www.osboxes.org/)
    * 可以下載 virtual box or VMware 的 os image
