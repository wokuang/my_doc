# List using Jenkins reference
  * 用 Docker 的方式裝 Jenkins 還滿好玩的 

## 用 docker 跑 jenkins
  * [使用 Docker 安裝 Jenkins](https://ithelp.ithome.com.tw/articles/10200621)
    * 在 Mac 上無法用 /data/jenkins 來跑，改為建立於 ~/data/jenkins 就可以囉
```
docker run \
    --name jenkins \
    -d --restart always \
    -p 8080:8080 -p 50000:50000 \
    -v /Users/xxx/data/jenkins:/var/jenkins_home \
    jenkins/jenkins:lts
```

## Jenkins 使用心得
  * 一開始建立 task 大部分都是使用 free style 的 task
  * 有關 [參數化建置](https://tsoliangwu0130.gitbooks.io/learn-ansible-and-jenkins-in-30-days/content/jenkins/jenkins-parameterized-job.html) 的設定 
    * 要來看看不同的參數設定 

## 有關 Pipeline 專案 的大小事
  * 可以用 job 中的 pipeline-syntax 來進行 Snippet Generator
  * pipeline 是由下面三項組成
    * Agent / Node - 節點
    * Stage - 階段
    * Step - 步驟
```
pipeline {
    agent {
        node {
            label 'master'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                git(url: 'https://github.com/xxx/xxx.git', branch: 'master')
            }
        }
        stage('Build') {
            steps {
                sh '''for file in $(find . -type f -name "*.md")
                do
                   echo $file
                done'''
            }
        }
        stage('Delivery') {
            steps {
                sh 'echo \'Publish artifact over SSH.\''
            }
        }
    }
}
```
  * [Pipeline 專案](https://tsoliangwu0130.gitbooks.io/learn-ansible-and-jenkins-in-30-days/content/jenkins/jenkins-pipeline.html)

## Reference
  * [Jenkins 介紹](https://tsoliangwu0130.gitbooks.io/learn-ansible-and-jenkins-in-30-days/content/jenkins/jenkins-intro.html) ** 這篇要讀 
  * [Jenkins 插件推薦](https://tsoliangwu0130.gitbooks.io/learn-ansible-and-jenkins-in-30-days/content/jenkins/jenkins-plugins-recommendation.html)
