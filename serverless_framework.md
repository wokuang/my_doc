# List serverless framework document

## official site
  * gitHub [serverless/serverless](https://github.com/serverless/serverless)
  * [AWS Provider Documentation](https://serverless.com/framework/docs/providers/aws/) ** 這份滿重要的
  * [serverless examples](https://serverless.com/examples/)

## 一些試過的 example
  * [AWS | Scheduled Cron Example](https://serverless.com/examples/aws-python-scheduled-cron/)
    * $ serverless logs --function cron --tail # 看 log 用的 command
    * $ sls logs -f cron -t

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
  * [Aurora Serverless Data API: A First Look](https://www.jeremydaly.com/aurora-serverless-data-api-a-first-look/) 連 relational DB 也有 serverless 
