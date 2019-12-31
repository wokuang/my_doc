# List AWS EKS information
  * [brentley/ecsdemo-frontend](https://github.com/brentley/ecsdemo-frontend)
    * 有分 EKS & ECS 的版本
  * [Deploy a Kubernetes Application](https://aws.amazon.com/tw/getting-started/projects/deploy-kubernetes-app-amazon-eks/)
    * with Amazon Elastic Container Service for Kubernetes
  * [Amazon ECS Workshop for AWS Fargate](https://ecsworkshop.com/)
  * [Amazon EKS Workshop](https://eksworkshop.com/)

## define
  * node
  * pod
  * Service in Kubernetes is an abstraction 
    * A Service is defined using YAML (preferred) or JSON
    * Services match a set of Pods using labels and selectors
    * defines a logical set of Pods
    * policy by which to access them
  * LabelSelector

## command
  * The common format of a kubectl command is: kubectl action resource
  * kubectl get - list resources
  * kubectl describe - show detailed information about a resource
  * kubectl logs - print the logs from a container in a pod
  * kubectl exec - execute a command on a container in a pod

## reference
  * [Kubernetes on AWS | Weaveworks](https://www.weave.works/technologies/kubernetes-on-aws/)
  * [Deploying a Kubernetes Cluster with Amazon EKS](https://logz.io/blog/amazon-eks/)
  * [Deploying microservices to Amazon Web Services](https://openliberty.io/guides/cloud-aws.html) * 來試試看

