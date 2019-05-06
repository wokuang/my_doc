# Serverless document


## example
  - [aws-samples/aws-serverless-workshops](https://github.com/aws-samples/aws-serverless-workshops) ** 可以試試這邊的範例

## 使用的 AWS service
  - Lambda
  - API gateway
  - DynamoDB

## 可以參考的文件
  - [Building Dynamic Dashboards Using AWS Lambda and Amazon DynamoDB Streams: Part II](https://medium.com/aws-activate-startup-blog/building-dynamic-dashboards-using-aws-lambda-and-amazon-dynamodb-streams-part-ii-b2d883bebde5)
  - 白皮書 [AWS 無伺服器多層架構：使用 Amazon API Gateway 和 AWS Lambda](https://d0.awsstatic.com/whitepapers/AWS_Serverless_Multi-Tier_Archiectures.pdf)

## 有關 auth
  - [API Gateway & AWS Lambda for Authentication](https://www.foreach.be/blog/api-gateway-aws-lambda-for-authentication)
  - [3 Steps to Access AWS Resources with Google Sign-In](https://blog.codecentric.de/en/2018/04/accessing-aws-resources-with-google-sign-in/#step-1)
  - [How to create an AWS Lambda Authorizer for an Amazon API Gateway](https://blog.codecentric.de/en/2018/04/aws-lambda-authorizer/) ** 這篇很重要

## cold start
  * [Everything you need to know about cold starts in AWS Lambda](https://hackernoon.com/cold-starts-in-aws-lambda-f9e3432adbf0)
  * [Resolving Cold Start️ in AWS Lambda](https://medium.com/@lakshmanLD/resolving-cold-start%EF%B8%8F-in-aws-lambda-804512ca9b61)
    * 以每 20 min 呼叫一次的方式，來保持 lambda warm
  * [Serverless: Cold Start War](https://mikhail.io/2018/08/serverless-cold-start-war/) ** 很值得一讀

## error handling
  * [Handle Errors in Serverless Applications with AWS Step Functions and AWS Lambda](https://aws.amazon.com/tw/getting-started/tutorials/handle-serverless-application-errors-step-functions-lambda/)

## 一些實作方式
  * [淺析 serverless 架構與實作](https://denny.qollie.com/2016/05/22/serverless-simple-crud/) 

## serverless diagram
  * [Serverless Architecture Language](https://hackernoon.com/documenting-serverless-architectures-69bf63fc67b0) ** 要畫圖，這份很值得參考 
  * [Serverless Allergy Checker with Amazon Rekognition, Lex, Polly, DynamoDB, S3 and Lambda](https://hackernoon.com/serverless-allergy-checker-with-amazon-rekognition-lex-polly-dynamodb-s3-and-lambda-35fd215b51b0) ** 這份也可以看看 
  * [6 things I’ve learned in my first 6 months using serverless](https://read.acloud.guru/six-months-of-serverless-lessons-learned-f6da86a73526)
  * [How Does a Serverless App Work?](https://dzone.com/articles/how-does-a-serverless-app-work)

## 有關 serverless framework 的介紹
  * [AWS Lambda + Serverless Framework + Python — A Step By Step Tutorial — Part 1 “Hello World”](https://medium.com/devopslinks/aws-lambda-serverless-framework-python-part-1-a-step-by-step-hello-world-4182202aba4a)

## serverless monitoring & deubg
  * [8 Best Tools to Monitor and Debug Serverless Applications](https://geekflare.com/serverless-monitoring-troubleshooting-tools/)
    * 來看看 Amazon CloudWatch 的方式  

## 想想要如何將 s3 的 domain name, 改為公司的 domain
  * [Virtual Hosting of Buckets](https://docs.aws.amazon.com/en_us/AmazonS3/latest/dev/VirtualHosting.html)
  * [Custom domain for s3 bucket?](https://stackoverflow.com/questions/25667252/custom-domain-for-s3-bucket)

## API gateway document
  - [Amazon API Gateway 資源](https://aws.amazon.com/tw/api-gateway/resources/)
  - [Map Response Payload](https://docs.aws.amazon.com/en_us/apigateway/latest/developerguide/api-gateway-create-api-step-by-step.html#getting-started-models) 將回傳的結果，使用map 來加以轉換 parameter name

## 一些有用的工具
  - [PostMan](https://www.getpostman.com/) 用來測試 Restful API 的 tool
  - [Marak/faker.js](https://github.com/marak/Faker.js/) generate massive amounts of realistic fake data in Node.js and the browser

## using framework
  - [awslabs/serverless-application-model](https://github.com/awslabs/serverless-application-model) AWS Serverless Application Model (AWS SAM) prescribes rules for expressing Serverless applications on AWS.
  - [serverless/serverless](https://github.com/serverless/serverless)
