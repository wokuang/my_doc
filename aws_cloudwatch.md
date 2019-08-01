# List AWS cloudwatch information

## How to grep log from cloudwatch
  * 目前是選用 awslogs package 的方式進行 
    * To list available log groups:
```
$ awslogs groups
```
    * To list log streams
```
$ awslogs streams /var/log/syslog
```
    * To get the records and follow them (see new ones as they come):
```
$ awslogs get --watch /var/log/syslog
```
   * Using grep to filter information
```
$ awslogs get /aws/lambda/cloud-update-prod-* --start='1d ago' | grep -i "ccbfd8b2-e0d8-445a-9ef0-a6f899d761ef"
```
  * reference
    * [How do I filter and extract raw log event data from Amazon Cloudwatch](https://stackoverflow.com/questions/27804342/how-do-i-filter-and-extract-raw-log-event-data-from-amazon-cloudwatch)
    * [ 如何从Amazon Cloudwatch过滤和提取原始日志事件数据](https://365airsoft.com/zh-CN/questions/1470528/amazon-cloudwatch?utm_source=landcareweb.com&utm_medium=Redirect)
    * [jorgebastida/awslogs](https://github.com/jorgebastida/awslogs) ** 目前是這用個方式

## 想想 log aggregation 的方式
  * [How to implement log aggregation for AWS Lambda](https://www.freecodecamp.org/news/how-to-implement-log-aggregation-for-aws-lambda-ca714bf02f48/)
