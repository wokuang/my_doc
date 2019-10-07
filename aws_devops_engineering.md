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

  * AWS Config
    * 紀錄 AWS resource config 的變更歷程
    * [AWS Config](https://aws.amazon.com/tw/config/)

  * 跟 security 有關, 建議要開的
    * Cloud Trail
    * Config

  * 存放 secure 的地方
    * AWS Secrets Manger
      * 放置 password
    * Parameter Store
      * 放 MySQL endpoint

## New Service
  * EC2 Instance Connect

## AWS Trainging Portal 
  * [DevOps Engineering on AWS](https://www.aws.training/oneclickregistration?id=40215)
    * using myself email account
  * 可由此查看結訓證書

