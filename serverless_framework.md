# List serverless framework document

## official site
  * gitHub [serverless/serverless](https://github.com/serverless/serverless)
  * [AWS Provider Documentation](https://serverless.com/framework/docs/providers/aws/) ** 這份滿重要的
  * [serverless examples](https://serverless.com/examples/)
  * [forum](https://forum.serverless.com/)

## 一些介紹
  * [Full Stack Python Serverless](https://www.fullstackpython.com/serverless.html)

## 一些試過的 example
  * [AWS | Scheduled Cron Example](https://serverless.com/examples/aws-python-scheduled-cron/)
    * $ serverless logs --function cron --tail # 看 log 用的 command
    * $ sls logs -f cron -t
  * [AWS | REST API With DynamoDB](https://serverless.com/examples/aws-python-rest-api-with-dynamodb/)
    * $ serverless deploy # 執行這 command 就好
    * 可以參考這份，來設定到不同的 python 程式
  * [How to Handle your Python packaging in Lambda with Serverless plugins](https://serverless.com/blog/serverless-python-packaging/) 有額外 python package 的方式 
  * [AWS | REST API With FaunaDB](https://serverless.com/examples/aws-python-rest-api-with-faunadb/)
    * 透過這份來試試 FaunaDB
    * 要去 [FaunaDB](https://fauna.com/serverless-cloud-sign-up) 取得 FAUNADB_SECRET
    * 建立 virtual env
  * [AWS | PynamoDB S3 Sigurl](https://serverless.com/examples/aws-python-pynamodb-s3-sigurl/)
    * 這份可以參考來進行，目前要做的 update service (AU server)
    * 有遇到一個 error - An error occurred: S3BucketSigs3uploader - sig-s3-uploader already exists.
      * 由 error 來看，應該是 s3 bucket 已經存在  
      * 解法：將 app_acronym 的設定由 sig-s3-uploader 改為 sig-s3-uploader-test
      * [aws-python-pynamodb-s3-sigurl: Cannot read property 'toString' of null ](https://github.com/serverless/examples/issues/364)
  * [AWS | Auth0 Custom Authorizers API](https://serverless.com/examples/aws-python-auth0-custom-authorizers-api/)

## 有關 authentication
  * 預計實作的方向
    * session 自己編
    * auth 透過 api-gateway 的方式
  * [Strategies for implementing user authentication in serverless applications](https://serverless.com/blog/strategies-implementing-user-authentication-serverless-applications/)
    * Amazon provides a [python blueprint](https://github.com/awslabs/aws-apigateway-lambda-authorizer-blueprints/blob/master/blueprints/python/api-gateway-authorizer-python.py) for implementing authorizer functions
  * [The Complete Guide to Custom Authorizers with AWS Lambda and API Gateway](https://www.alexdebrie.com/posts/lambda-custom-authorizers/) ** 進行的概念

## Serverless Framework
  * [Test-Driven Serverless Application Development](https://serverless.com/blog/tdd-serverless/)

## 以 api gateway 處理 lambda error handling 錯誤
  * 目前是以 Lambda-Proxy 的方式來整合，在 lambda 中自行處理回傳的資料
  * [Lambda-Proxy vs Lambda Integration in AWS API Gateway](https://medium.com/@lakshmanLD/lambda-proxy-vs-lambda-integration-in-aws-api-gateway-3a9397af0e6d) ** 這篇要先看
  * [TUTORIAL: Build a Hello World API with Lambda Proxy Integration](https://docs.aws.amazon.com/en_us/apigateway/latest/developerguide/api-gateway-create-api-as-simple-proxy-for-lambda.html) AWS official 的範例
  * [（八）API Gateway－－AWS經驗教學](http://akuma1.pixnet.net/blog/post/306807820-%EF%BC%88%E5%85%AB%EF%BC%89api-gateway%EF%BC%8D%EF%BC%8Daws%E7%B6%93%E9%A9%97%E6%95%99%E5%AD%B8) 有說明 lambda proxy 的整合 & lambda test template
  * [Error handling with API Gateway and Go Lambda functions](https://hackernoon.com/error-handling-with-api-gateway-and-go-   lambda-functions-fe0e10808732) ** 這篇要看
  * [搭配使用 AWS Lambda 與 Amazon API Gateway](https://docs.aws.amazon.com/zh_tw/lambda/latest/dg/with-on-demand-https.html)
  * [在 API Gateway 中處理 Lambda 錯誤](https://docs.aws.amazon.com/zh_tw/apigateway/latest/developerguide/handle-errors-in-lambda-integration.html)
  * [AWS Lambda Function Errors in Python](https://docs.aws.amazon.com/en_us/lambda/latest/dg/python-exceptions.html)

## 設定 custom domain
  * [How to set up a custom domain name for Lambda & API Gateway with Serverless](https://serverless.com/blog/serverless-api-gateway-domain/) 
    * [amplify-education/serverless-domain-manager](https://github.com/amplify-education/serverless-domain-manager)

## 還要來看看的
  * [Where to start: the most popular Framework plugins](https://serverless.com/blog/most-popular-framework-plugins/)

## 開啟 serverless debug 的方式
```
  $ SLS_DEBUG=*
```

## 建立 virtual env, 來上傳 python package
  * 建立 virtual env 方式
```
  $ virtualenv venv
  $ source ./venv/bin/activate
```
  * 安裝需要的 package
    * $ npm install serverless-python-requirements
  * 需要先安裝 docker 來包 package
    * You need to have Docker installed to be able to set dockerizePip: true or dockerizePip: non-linux. 
    * Alternatively, you can set dockerizePip: false, and it will not use Docker packaging. But, Docker packaging is essential if you need to build native packages that are part of your dependencies like Psycopg2, NumPy, Pandas, etc.
  * 在 serverless.yml 中，加入 plugins 設定
```
 plugins:
   - serverless-python-requirements

 custom:
  pythonRequirements:
    dockerizePip: non-linux

```


## tutorial
  * [The Right Way™ to do Serverless in Python](https://read.iopipe.com/the-right-way-to-do-serverless-in-python-e99535574454) ** 這篇值得一讀，可以用如下的方式來回傳 json 格式
```
import json
def handler(event, context):
    return {"statusCode": 200, "body": json.dumps({"message": "I'm an HTTP response"})}
```

## 一些常用的 command
  * deploy service
```
  $ sls deploy
```
  * 刪除 service
```
  $ sls remove -v
```
  * 看 help 說明
```
  $ sls deploy --help
  $ sls deploy -h
```

## AWS provider
  *  all functions inside the service are AWS Lambda functions. - [AWS - Functions](https://serverless.com/framework/docs/providers/aws/guide/functions/)
  * [AWS IAM document](https://serverless.com/framework/docs/providers/aws/guide/iam/)
  * [Referencing Environment Variables](https://serverless.com/framework/docs/providers/aws/guide/variables/)
  * [AWS - Layers](https://serverless.com/framework/docs/providers/aws/guide/layers/) ** 找時間看看
  * [events](https://serverless.com/framework/docs/providers/aws/guide/events/)
    * events are the things that trigger your functions to run
    * all events in the service are anything in AWS that can trigger an AWS Lambda function, like an S3 bucket upload, an SNS topic, and HTTP endpoints created via API Gateway.
  * [API Gateway](https://serverless.com/framework/docs/providers/aws/events/apigateway/) **
  * [Workflow](https://serverless.com/framework/docs/providers/aws/guide/workflow/) 
  * [How to Handle your Python packaging in Lambda with Serverless plugins](https://serverless.com/blog/serverless-python-packaging/) 有額外 python package 的方式 
  * [How to Access your RDS Database with Lambda Function and Serverless](https://medium.com/@antonio.cm.oliveira/how-to-access-your-rds-database-with-lambda-function-and-serverless-b7712dde9f80)
  * [Managing secrets, API keys and more with Serverless](https://serverless.com/blog/serverless-secrets-api-keys) ** 進階設定

## 一些需要注意的地方 
  * [Serverless Workarounds for CloudFormation's 200 Resource Limit](https://serverless.com/blog/serverless-workaround-cloudformation-200-resource-limit/)

## 可以使用 tag 的方式   
  * Cost estimations (tag functions with an environment tag: environment: Production)
  * Keeping track of legacy code (e.g. tag functions which use outdated runtimes: runtime: nodejs0.10)

## lambda layer 的相關資料
  * [AWS Lambda 合作夥伴](https://aws.amazon.com/tw/lambda/partners/)
  * [Lambda layers for python runtime](https://nordcloud.com/lambda-layers-for-python-runtime/)
  * [How to Deploy AWS Layers With Lambda And Serverless.js](https://medium.com/harrythegreat/build-aws-layers-lambda-serverless-js-42cd6d17b155)
  * [New for AWS Lambda – Use Any Programming Language and Share Common Components](https://aws.amazon.com/tw/blogs/aws/new-for-aws-lambda-use-any-programming-language-and-share-common-components/)
    * 使用 lambda layers 來試試 
  * [How to publish and use AWS Lambda Layers with the Serverless Framework](https://serverless.com/blog/publish-aws-lambda-layers-serverless-framework/)
  * [dschep/sqlite-lambda-layer](https://github.com/dschep/sqlite-lambda-layer)
 
## serverless - plugin
 * [serverless/plugins](https://github.com/serverless/plugins)

## lambda connect to RDS (using serverless)
  * Lambda 設定 VPC & subnet
  * IAM role 要加 AWSLambdaVPCAccessExecutionRole policy
  * 確認 security group 是否為 VPC 都可連
  * [How to Access your RDS Database with Lambda Function and Serverless](https://medium.com/@antonio.cm.oliveira/how-to-access-your-rds-database-with-lambda-function-and-serverless-b7712dde9f80) ** 這篇很重要
  * [Serverless & RDBS (Part 1) — Set up AWS RDS Aurora and Lambda with serverless](https://medium.com/mos-engineering/serverless-rdbs-part-1-set-up-aws-rds-aurora-and-lambda-with-serverless-4c2a5146faf4)
  * [Tutorial: Configuring a Lambda Function to Access Amazon RDS in an Amazon VPC](https://docs.aws.amazon.com/en_us/lambda/latest/dg/vpc-rds.html)
  * [Cannot connect to a AWS RDS mysql database from lambda serverless in python](https://forum.serverless.com/t/cannot-connect-to-a-aws-rds-mysql-database-from-lambda-serverless-in-python/3817)

## lambda error and logger
  * [A basic error logger for Python Lambdas](https://alexwlchan.net/2018/09/error-logging-in-lambdas/)
  * [rholder/retrying](https://github.com/rholder/retrying) 進行 retry 的方式  
  * [Handle Errors in Serverless Applications with AWS Step Functions and AWS Lambda](https://aws.amazon.com/tw/getting-started/tutorials/handle-serverless-application-errors-step-functions-lambda/)

## 在 lambda 中，使用 s3 的相關資料
  * 使用 boto3 跟 s3_client 連，並搭配 zipfile 解 zip 檔
  * [Amazon S3 and Python](https://whiletrue.run/2016/09/20/amazon-s3-and-python/)
  * [msharp/aws-lambda-unzipper.py](https://gist.github.com/msharp/eaa1c5b1b4e50f1372c19bbe5ef52f9e)
  * [How do I extract a zip file in an Amazon S3 by using Lambda?](https://www.quora.com/How-do-I-extract-a-zip-file-in-an-Amazon-S3-by-using-Lambda)
  * [How to get contents of a text file from AWS s3 using a lambda function?](https://stackoverflow.com/questions/30651502/how-to-get-contents-of-a-text-file-from-aws-s3-using-a-lambda-function)
  * [How to read contents of zip file in Python](https://codeyarns.com/2013/10/03/how-to-read-contents-of-zip-file-in-python/) ** 讀 zip file 的方式
  * [zipfile – Read and write ZIP archive files](https://pymotw.com/2/zipfile/)

## 進階的使用方式 - lambda layer
  * [How to beat the AWS Lambda deployment limits](https://hackernoon.com/exploring-the-aws-lambda-deployment-limits-9a8384b0bec3)

## Serverless OPS
  * [Serverless Ops 101 - Using CloudWatch Metrics & Alarms with Serverless Functions](https://serverless.com/blog/serverless-ops-metrics/)
  * [Serverless Ops 102 - CloudWatch Logs and Centralized Logging with AWS Lambda](https://serverless.com/blog/serverless-ops-logs/)
  * [4 Tools For Building Production Serverless Architectures with Lambda](https://serverless.com/blog/4-tools-for-building-production-serverless-architectures/)
    * 要找時間看看用 Sentry 來進行 error tracking

## Example
  *  [AWS | Simple HTTP Endpoint](https://serverless.com/examples/aws-python-simple-http-endpoint/)

## Reference
  * [Getting started with Serverless framework + AWS Lambda and API Gateway](https://medium.com/@alcalawilfre/get-started-with-serverless-framework-aws-lambda-and-api-gateway-177b2ab1ffca)
  * [AWS Lambda Simplified With Serverless Framework](https://itnext.io/aws-lambda-simplified-with-serverless-framework-8fbc01418422)

## 一些進階的有趣主題
  * [AWS re:Invent 2017: Become a Serverless Black Belt: Optimizing Your Serverless Appli (SRV401)](https://www.youtube.com/watch?v=oQFORsso2go&feature=youtu.be&t=8m5s)
  * [Getting started with AWS Lambda Layers for Python](https://medium.com/@adhorn/getting-started-with-aws-lambda-layers-for-python-6e10b1f9a5d)
  * [Auto Scale DynamoDB With Dynamic DynamoDB](https://aws.amazon.com/tw/blogs/aws/auto-scale-dynamodb-with-dynamic-dynamodb/) 有空來看看
  * [Using Serverless Authentication Boilerplate with FaunaDB](https://serverless.com/blog/faunadb-serverless-authentication/)
  * [Aurora Serverless Data API: A First Look](https://www.jeremydaly.com/aurora-serverless-data-api-a-first-look/) 連 relational DB 也有 serverless 