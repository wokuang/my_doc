# List the AWS api gateway reference

## authorization
  - [Custom Authorizers](https://rickhw.github.io/2018/02/04/AWS/Study-Notes-API-Gateway-Custom-Authorizer-using-Lambda/)

## api endpoint
API Gateway 內已部署至特定區域之 API 的主機名稱。主機名稱的格式為 {api-id}.execute-api.{region}.amazonaws.com

## [api gateway limit](https://docs.aws.amazon.com/en_us/apigateway/latest/developerguide/limits.html#api-gateway-limits)
  - [API Gateway Limits for Configuring and Running a REST API](https://docs.aws.amazon.com/en_us/apigateway/latest/developerguide/limits.html#api-gateway-limits)
    - Payload size : 10 MB

## 有關 api gateway log
  * [在 serverless 中 api gateway log 的設定](https://serverless.com/framework/docs/providers/aws/events/apigateway/#logs)
  * [API Gateway Mapping Template and Access Logging Variable Reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference?cmpid=docs_apigateway_console)
    * 僅能使用 $context 的參數資料，如果讀 $input 的資料寫到 log 中
    * [Log header value in Custom Access Logging](https://forums.aws.amazon.com/message.jspa?messageID=860636) 詢問問題紀錄
  * [How do I enable CloudWatch Logs for troubleshooting my API Gateway API?](https://aws.amazon.com/tw/premiumsupport/knowledge-center/api-gateway-cloudwatch-logs/)

## official document
  - [Amazon API Gateway 文件](https://docs.aws.amazon.com/apigateway/index.html#lang/zh_tw)
    - 先由 [開發人員指南](https://docs.aws.amazon.com/zh_tw/apigateway/latest/developerguide/welcome.html) 中的 [Amazon API Gateway 內的 REST API 入門](https://docs.aws.amazon.com/zh_tw/apigateway/latest/developerguide/getting-started.html) 來加以閱讀起
  - [在 API Gateway 中建立 REST API 做為 Amazon S3 代理](https://docs.aws.amazon.com/zh_tw/apigateway/latest/developerguide/integrating-api-with-aws-services-s3.html)

