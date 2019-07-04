# List AWS ECR (Elastic Container Registry) information

## 有關 ecr 的 policy 設定
  * 資料來源 - [Setting permissions on Amazon EC2 Container Registry repositories](http://blog.shippable.com/setting-permissions-on-aws-ec2-ecr-repositories) ** 這篇很值得一讀 
  * 要透過 set-repository-policy 的 command 進行
```
$ aws --profile admin ecr set-repository-policy --repository-name repo1 --policy-text file://usr1Policy.json
```
  * 透過 command，來 create user & create access key
```
$ aws --profile power-dev-serverless iam create-user --user-name=bruce-test1
$ aws --profile power-dev-serverless iam create-access-key --user-name=bruce-test1
```

## Reference
  * [Amazon ECR Repository Policy Examples](https://docs.aws.amazon.com/AmazonECR/latest/userguide/RepositoryPolicyExamples.html)
  * [Setting permissions on Amazon EC2 Container Registry repositories](http://blog.shippable.com/setting-permissions-on-aws-ec2-ecr-repositories) ** 這篇很值得一讀 
