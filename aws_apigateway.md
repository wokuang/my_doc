# List aws api gateway information

## 有關 api gateway log
  * [在 serverless 中 api gateway log 的設定](https://serverless.com/framework/docs/providers/aws/events/apigateway/#logs)
  * [API Gateway Mapping Template and Access Logging Variable Reference](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference?cmpid=docs_apigateway_console)
    * 僅能使用 $context 的參數資料，如果讀 $input 的資料寫到 log 中
    * [Log header value in Custom Access Logging](https://forums.aws.amazon.com/message.jspa?messageID=860636) 詢問問題紀錄


