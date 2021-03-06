# Use this to record AWS lambda information

## CLoud Developers and Architects
  - Create event-driven, serverless architecture
  - Create work-flow using Step functions

  - Serverless Framework

## Lambda event source
  - IOT
  - API Gateway
  - Alexa
  - CloudFront
  - CloudWatch Events & Logs
  - DynameDB Streams & Kinesis Streams
  - S3 Buckets
  - SNS & SQS

## price
  - [How to Optimize AWS Lambda Costs (With Examples)](https://dashbird.io/blog/how-to-optimize-aws-lambda-cost-with-examples/)
  - [AWS Lambda Cost Calculator](https://dashbird.io/lambda-cost-calculator/)
  - [How Much Does It Cost To Run A Serverless API on AWS?](https://alestic.com/2016/12/aws-invoice-example/)
  - [Secure access directly from web app to amazon s3?](https://stackoverflow.com/questions/49709849/secure-access-directly-from-web-app-to-amazon-s3)

## How to download file from private S3
  - [Using pre-signed URLs to upload a file to a private S3 bucket](https://sanderknape.com/2017/08/using-pre-signed-urls-upload-file-private-s3-bucket/)

## Authorization
  * [The Complete Guide to Custom Authorizers with AWS Lambda and API Gateway](https://www.alexdebrie.com/posts/lambda-custom-authorizers/) ** 這篇滿有用的

## Limit
  - [AWS Lambda Limits](https://docs.aws.amazon.com/en_us/lambda/latest/dg/limits.html)
    - Invocation payload (request and response): 6 MB (synchronous) / 256 KB (asynchronous)

## using AWS cli example
  - [Your First Python Lambda Function on AWS Using the AWS CLI Tools](https://sysadmins.co.za/your-first-python-lambda-function-on-aws-using-the-aws-cli-tools/)

## lambda timeout
  * [How to log timed out Lambda invocations](https://medium.com/theburningmonk-com/how-to-log-timed-out-lambda-invocations-6e5a6db5fe85)

## 跟 S3 meta-data 互動
  * [get file metadata from S3 using Python boto](https://stackoverflow.com/questions/50271946/get-file-metadata-from-s3-using-python-boto)
  * [boto3 how to create object with metadata?](https://stackoverflow.com/questions/33771318/boto3-how-to-create-object-with-metadata)
```
s3.Object('bucket-name', 'uuid-key-name').put(Body='data',
                                              Metadata={'key-name':'value'})
```

## Reference
  * [Best Practices for Working with AWS Lambda Functions](https://docs.aws.amazon.com/en_us/lambda/latest/dg/best-practices.html)
  * [Tutorial: Configuring a Lambda Function to Access Amazon ElastiCache in an Amazon VPC](https://docs.aws.amazon.com/en_us/lambda/latest/dg/vpc-ec.html)

## lambda runtime
  * [Introducing the C++ Lambda Runtime](https://aws.amazon.com/tw/blogs/compute/introducing-the-c-lambda-runtime/)
    * Amazon Linux
  * [AWS Lambda Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
   
## 關於將 lambda 放在 production 的相關事項
  * [How to operate reliable AWS Lambda applications in production](https://www.concurrencylabs.com/blog/how-to-operate-aws-lambda/)

## 如果強制將 lambda container 重啟
  * 當 lambda 的 code 沒有寫好時，要強制重啟的方式是重新 deploy lambda
  * [Force Discard AWS Lambda Container](https://stackoverflow.com/questions/47445815/force-discard-aws-lambda-container/47447475#47447475)
  * [Restarting AWS lambda function to clear cache](https://stackoverflow.com/questions/50866472/restarting-aws-lambda-function-to-clear-cache)

## send alert to slack
  * [New – Slack Integration Blueprints for AWS Lambda](https://aws.amazon.com/tw/blogs/aws/new-slack-integration-blueprints-for-aws-lambda/)
  * [將 AWS CloudWatch Alarms 發佈到 Slack](https://medium.com/verybuy-dev/%E5%B0%87-aws-cloudwatch-alarms-%E7%99%BC%E4%BD%88%E5%88%B0-slack-c283959a90ca)

## AWS WAF support
  * [Amazon API Gateway adds support for AWS WAF](https://aws.amazon.com/tw/blogs/compute/amazon-api-gateway-adds-support-for-aws-waf/)

## AWS 提供的範例程式
  * [serverless-application-model/examples/apps/](https://github.com/awslabs/serverless-application-model/tree/master/examples/apps)
  * [awslabs/serverless-application-model](https://github.com/awslabs/serverless-application-model)
    * AWS Serverless Application Model (SAM) is an open-source framework for building serverless applications

## Course
  - AWS Developers: Serverless Architecture and Monitoring - ongoin 2019-02-27
  - Deploying Serverless Applications in AWS Using the Serverless Application Model
  - AWS Developer: An Introduction to AWS Lambda on pluralight => done on 2019-02-26
  - AWS Developer: Lambda Deep Dive on pluralsight

