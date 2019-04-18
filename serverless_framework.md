# List serverless framework document

## official site
  * gitHub [serverless/serverless](https://github.com/serverless/serverless)
  * [AWS Provider Documentation](https://serverless.com/framework/docs/providers/aws/) ** 這份滿重要的
  * [serverless examples](https://serverless.com/examples/)

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

## 進階的使用方式
  * [New for AWS Lambda – Use Any Programming Language and Share Common Components](https://aws.amazon.com/tw/blogs/aws/new-for-aws-lambda-use-any-programming-language-and-share-common-components/)
    * 使用 lambda layers 來試試 
  
## Serverless OPS
  * [Serverless Ops 101 - Using CloudWatch Metrics & Alarms with Serverless Functions](https://serverless.com/blog/serverless-ops-metrics/)
  * [Serverless Ops 102 - CloudWatch Logs and Centralized Logging with AWS Lambda](https://serverless.com/blog/serverless-ops-logs/)

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
