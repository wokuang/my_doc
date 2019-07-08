# List AWS ECR (Elastic Container Registry) information

## oofficial doc
  * [什麼是 Amazon Elastic Container Registry？](https://docs.aws.amazon.com/zh_tw/AmazonECR/latest/userguide/what-is-ecr.html)

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
  * 設定 policy 的方式，目前僅能用 command line 來設定  
```
$ aws ecr set-repository-policy --repository-name dev/acus/fe --policy-text file://devPolicy.json
```

## 使用 iam policy 來設定 ecr 的權限
  * 使用 iam user 來設定 ecr 存取權限
  * example
```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:ListImages",
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories"
      ],
      "Resource": [
        "arn:aws:ecr:us-west-2:<AWS_ID>:repository/dev/*"
      ]
    }
  ]
}
```

## Reference
  * [Amazon ECR Repository Policy Examples](https://docs.aws.amazon.com/AmazonECR/latest/userguide/RepositoryPolicyExamples.html)
  * [Using Amazon Container Registry Service](https://rancher.com/using-amazon-container-registry-service/)
  * [Setting permissions on Amazon EC2 Container Registry repositories](http://blog.shippable.com/setting-permissions-on-aws-ec2-ecr-repositories) ** 這篇很值得一讀 
  * [Authenticating Amazon ECR Repositories for Docker CLI with Credential Helper](https://aws.amazon.com/tw/blogs/compute/authenticating-amazon-ecr-repositories-for-docker-cli-with-credential-helper/) 可以用於 jenkis & upload server
  * [How to connect to AWS ECR using python docker-py](https://serverfault.com/questions/856485/how-to-connect-to-aws-ecr-using-python-docker-py)
  * [boto3 ecr get_authorization_token return incorrect token](https://github.com/boto/boto3/issues/533) 參考這部分，來實作 boto3 的 code
  * [boto3 Docs Available Services ECR](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/ecr.html)

## 進階技巧
  * [Enable AWS Elastic Container Registry custom domain and anonymous access over private network](https://itnext.io/enable-aws-elastic-container-registry-custom-domain-and-anonymous-access-over-private-network-123d07663709)
