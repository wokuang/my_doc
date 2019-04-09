# List AWS ECR (Elastic Container Registry) reference

## docker 基礎
  * [如何安裝 Docker for Mac ?](https://oomusou.io/docker/docker-for-mac/)
  * [Get started with Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/)
  * [Docker run reference](https://docs.docker.com/engine/reference/run/)

## 建立 docker image
  * create Dockerfile 
  * 在 Dockerfile 中，寫入建 image 的cmd
  * 建立 docker image
```
  $ docker build -t cowsay:0.1 .
  # help
  $ docker build help
```
  * 列出所有 images
```
  $ docker images
```
  * 執行 image
```
  $ docker run cowsay:0.1 "hello world"
  #
  $ docker run --help
```

## 將 image 放到 Amazon ECR 上
  * 建立 AWS IAM account & setting
  * 建立 aws ecr respoitory
```
  $ aws ecr create-repository --repository-name cowsay
```
  * 執行 docker login
     * 先跑 aws command (get-login), 取得&執行 docker login  
```
  $ aws ecr get-login --no-include-email
```
  * 下 tag
```
  $ docker tag cowsay:0.2 025573876724.dkr.ecr.us-west-2.amazonaws.com/cowsay:0.2
```
  * 將 docker push 至 aws ecr 上 
```
  $ docker push 025573876724.dkr.ecr.us-west-2.amazonaws.com/cowsay:0.2
```

## 移除 aws ecr repository
```
  $ aws ecr delete-repository --repository-name bruce --force
```

## document
  * [Amazon Elastic Container Registry 入門](https://aws.amazon.com/tw/ecr/getting-started/)
    * [Docker Basics for Amazon ECR](https://docs.aws.amazon.com/en_us/AmazonECR/latest/userguide/docker-basics.html) 由這篇開始 
    * [Amazon ECR Managed Policies](https://docs.aws.amazon.com/en_us/AmazonECR/latest/userguide/ecr_managed_policies.html) 設定 ECR ploicies
  * [Authenticating Amazon ECR Repositories for Docker CLI with Credential Helper](https://aws.amazon.com/tw/blogs/compute/authenticating-amazon-ecr-repositories-for-docker-cli-with-credential-helper/)
  * [How to Build Your Docker Images in AWS with Ease](https://dev.to/kylegalbraith/how-to-build-your-docker-images-in-aws-with-ease-3174)
