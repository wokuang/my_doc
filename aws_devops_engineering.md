# List AWS devops engineer information

## credential 方式
  * 設定的優先權由高到低
  * define client / resource
  * env
  * aws configuration
  * role

## AWS CLI
  * 可以多看看 --query 的用法
  * 可以試試 filter 的用法
    * 可用 json 的方式，也可以 key value 的方式
    * 可以用 tag 來 filter
  * 在大多數會需要等待的 resource，都有提供 wait 的動作
```
$ aws ec2 wait xxx
```
  * query ec2 instance sample
```
$ aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId'
```
  * query by tags
```
$ aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId, Tags[?Key==`Name`].Value | [0], IamInstanceProfile.Arn]'
```
  * store to shell variable
```
$ appROLEARN=$(aws ec2 describe-instances --filter "Name=tag:Name,Values=MadLib Web*" --query 'Reservations[0].Instances[0].IamInstanceProfile.Arn' --output text)
```
  * AWS CodeDeploy sample cli
```
$ aws deploy list-applications
$ aws deploy list-deployments
```
  * 有用到的 api doc
    * [ec2 describe-instances](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html#options)
    * [EC2 using filter](https://docs.aws.amazon.com/en_us/AWSEC2/latest/UserGuide/Using_Filtering.html)
    * [IAM list role policies](https://docs.aws.amazon.com/cli/latest/reference/iam/list-role-policies.html)
    * [AWS Elastic Beanstalk](https://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/index.html)
    * [AWS OpsWorks](https://docs.aws.amazon.com/cli/latest/reference/opsworks/index.html#available-commands)
    * [AWS CodeDeploy](https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html#cli-aws-deploy)

  * git-secret

  * Service Catalog
    * store CloudFormation template

## IAM
  * Assume Role
  * ABAC
    * [What Is ABAC for AWS?](https://docs.amazonaws.cn/en_us/IAM/latest/UserGuide/introduction_attribute-based-access-control.html)
    * [Simplify granting access to your AWS resources by using tags on AWS IAM users and roles](https://aws.amazon.com/tw/blogs/security/simplify-granting-access-to-your-aws-resources-by-using-tags-on-aws-iam-users-and-roles/)
    * [Working backward: From IAM policies and principal tags to standardized names and tags for your AWS resources](https://aws.amazon.com/tw/blogs/security/working-backward-from-iam-policies-and-principal-tags-to-standardized-names-and-tags-for-your-aws-resources/)

## Tag
  * 可以想想 Tag 的設計
  * [AWS Tagging Strategies](https://aws.amazon.com/tw/answers/account-management/aws-tagging-strategies/)
  * [AWS Tagging Best Practices – The Ultimate Guide](https://www.metricly.com/aws-tagging-best-practices/)
  * [What Are Best Practices for Tagging AWS Resources?](https://cloudacademy.com/blog/what-are-best-practices-for-tagging-aws-resources/)

## Cloud Formation
  * CreationPolicy Attribute
    * 常運用在 EC2 provision 時，當 EC2 再跑 user data 時，會需要時間
  * Custom Resources
    * 可以呼叫 lambda 程式
  * [Walkthrough: Looking Up Amazon Machine Image IDs](https://docs.aws.amazon.com/en_us/AWSCloudFormation/latest/UserGuide/walkthrough-custom-resources-lambda-lookup-amiids.html)
  * Updating Stacks

## Cloud Formation reference document
  * [Exporting Stack Output Values](https://docs.aws.amazon.com/en_us/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html)
  * [Fn::ImportValue](https://docs.aws.amazon.com/en_us/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
  * [Fn::Sub](https://docs.aws.amazon.com/en_us/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-sub.html)
  * [Helper Scripts Reference](https://docs.aws.amazon.com/en_us/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html)
  * [AWS CloudFormation Stack Updates](https://docs.aws.amazon.com/en_us/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html)
  * create stack sample
```
$ aws cloudformation create-stack --stack-name DB-tier --template-body file://DB_Tier.yaml
```

## AWS config
  * AWS Config
    * 紀錄 AWS resource config 的變更歷程
    * [AWS Config](https://aws.amazon.com/tw/config/)
  * [awslabs/aws-config-rules](https://github.com/awslabs/aws-config-rules)

## AWS CDK
  * 方便建立 CloudFormation 的工具
  * [aws/aws-cdk](https://github.com/aws/aws-cdk) The AWS Cloud Development Kit is a framework for defining cloud infrastructure in code https://aws.amazon.com/cdk
  * [AWS CDK Intro Workshop](https://cdkworkshop.com/)

## Others
  * 跟 security 有關, 建議要開的
    * Cloud Trail
    * Config

  * 存放 secure 的地方
    * AWS Secrets Manger
      * 放置 password
    * Parameter Store
      * 放 MySQL endpoint

## Code Commit

## Code Build

## Code Deploy
  * AppSpec

## Code Star
  * [AWS CodeStar Access Permissions Reference](https://docs.aws.amazon.com/en_us/codestar/latest/userguide/access-permissions.html)

## lambda
  * [Announcing improved VPC networking for AWS Lambda functions](https://aws.amazon.com/tw/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/)

## Mocking framework
  * Wiremock

## Fault Tolerance Testing
  * chaosmonkey

## AWS OpsWorks
  * 寫 client pem 的方式
```
sudo mkdir /etc/chef
echo $ow_privkey | sudo tee /etc/chef/client.pem
sudo chmod 644 /etc/chef/client.pem
```

## AWS System Manager
  * Documents
    * 可用這個來修復 ssh server

## ECR
  * 開始有支援 image life-cycle 功能
  * 進行 ECR login command
```
$ aws ecr get-login --no-include-email | /bin/bash
```

## roadmap
  * [aws/containers-roadmap](https://github.com/aws/containers-roadmap)
  * [containers-roadmap project](https://github.com/aws/containers-roadmap/projects/1)

## docker command dictionary
```
# Get a local Shell of container
      docker run -i -t --entrypoint /bin/bash imageID
# Create image using this directory's Dockerfile
      docker build -t friendlyname .
# Run "friendlyname" mapping port 4000 to 80
      docker run -p 4000:80 friendlyname
# Same thing, but in detached mode
      docker run -d -p 4000:80 friendlyname
# See a list of all running containers
     docker ps
# Gracefully stop the specified container
     docker stop <hash>
# See a list of all containers, even the ones not running
     docker ps -a
# Force shutdown of the specified container
     docker kill <hash>
 # Remove the specified container from this machine
     docker rm <hash>
# Remove all containers from this machine
     docker rm $(docker ps -a -q)
# Show all images on this machine
     docker images -a
# Remove the specified image from this machine
     docker rmi <imagename>
# Remove all images from this machine
     docker rmi $(docker images -q)
# Log in this CLI session using your Docker credentials
     docker login
# Tag <image> for upload to registry
     docker tag <image> username/repository:tag
# Upload tagged image to registry
     docker push username/repository:tag
# Run image from a registry
     docker run username/repository:tag
```

## Training
  * [self-paced-labs](https://aws.amazon.com/tw/training/self-paced-labs/)
  * [Training and Certification 的學習路徑](https://aws.amazon.com/tw/training/learning-paths/)
  * [AWS Certification](https://aws.amazon.com/certification/?nav=tc&loc=3)

## New Service
  * EC2 Instance Connect

## AWS Trainging Portal 
  * [DevOps Engineering on AWS](https://www.aws.training/oneclickregistration?id=40215)
    * using myself email account
  * 可由此查看結訓證書

