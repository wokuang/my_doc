# List ELK information

## 使用 AWS Elasticsearch Service
  * [Amazon Elasticsearch Service 入門](https://docs.aws.amazon.com/zh_tw/elasticsearch-service/latest/developerguide/es-gsg.html) - 建立一個簡單的 ES 來測試
    * ## 建立的 command
```
aws es create-elasticsearch-domain --domain-name bruce --elasticsearch-version 7.1 --elasticsearch-cluster-config InstanceType=t2.small.elasticsearch,InstanceCount=1 --ebs-options EBSEnabled=true,VolumeType=standard,VolumeSize=10 --access-policies '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"AWS":"*"},"Action":["es:*"],"Condition":{"IpAddress":{"aws:SourceIp":["60.251.40.253","118.163.170.73","35.165.85.252"]}}}]}'
```
    * 查詢 es domain command
```
aws es describe-elasticsearch-domain --domain bruce
```
  * [簽署 HTTP 請求到 Amazon Elasticsearch Service](https://docs.aws.amazon.com/zh_tw/elasticsearch-service/latest/developerguide/es-request-signing.html#es-request-signing-python) - 將資料寫入到 elastic search 中
  * [將串流資料載入到 Amazon Elasticsearch Service](https://docs.aws.amazon.com/zh_tw/elasticsearch-service/latest/developerguide/es-aws-integrations.html#es-aws-integrations-cloudwatch-es)
    * [Streaming CloudWatch Logs Data to Amazon Elasticsearch Service](https://docs.aws.amazon.com/en_us/AmazonCloudWatch/latest/logs/CWL_ES_Stream.html)

## 將 cloudwatch 資料，餵到 ES 的設定
  * [Streaming CloudWatch Logs Data to Amazon Elasticsearch Service](https://docs.aws.amazon.com/en_us/AmazonCloudWatch/latest/logs/CWL_ES_Stream.html)
  * [Function Execution Role for Service Principals](https://docs.aws.amazon.com/en_us/AmazonCloudFront/latest/DeveloperGuide/lambda-edge-permissions.html#lambda-edge-permissions-function-execution)
  * [Why can't create principal on aws iam for datadog?](https://www.reddit.com/r/aws/comments/8q7opj/why_cant_create_principal_on_aws_iam_for_datadog/) Principal 的設定是在建立 role 時，建立的
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "es:*"
            ],
            "Effect": "Allow",
            "Resource": "arn:aws:es:region:account-id:domain/target-domain-name/*"
        }
    ]
}
```

## 將 serverless log 寫入到 elastic search 中
  * [Lambda Logs in ELK](https://medium.com/bbc-design-engineering/lambda-logs-in-elk-e4d924757249) - How to ingest AWS Lambda Log Streams from CloudWatch into an ELK monitoring stack
  * [Streaming AWS CloudWatch Logs to your own ELK logging solution](https://medium.com/@sohit_kumar/streaming-aws-cloudwatch-logs-to-your-own-elk-logging-solution-2bbd32f25100)
  * [daniel-cottone/serverless-es-logs](https://github.com/daniel-cottone/serverless-es-logs) - A Serverless plugin to transport logs to ElasticSearch

## kibana 說明文件
  * [Kibana Guide 7.4 » Getting Started](https://www.elastic.co/guide/en/kibana/current/getting-started.html)
    * 由這份開始來試試 kibana
  * [Build your own dashboard](https://www.elastic.co/guide/en/kibana/current/tutorial-build-dashboard.html#tutorial-build-dashboard) - 這份滿好的，由匯入 data 開始，到建立 dashboard **

## insert elasticSearch index
  * [How to use Python helpers to bulk load data into an Elasticsearch index](https://kb.objectrocket.com/elasticsearch/how-to-use-python-helpers-to-bulk-load-data-into-an-elasticsearch-index)
  * [How to use Bulk API to store the keywords in ES by using Python](https://stackoverflow.com/questions/20288770/how-to-use-bulk-api-to-store-the-keywords-in-es-by-using-python)
  * 要加入 timestamp 的方式
    * [Add Timestamp to ElasticSearch with Elasticsearch-py using Bulk-API](https://stackoverflow.com/questions/31994187/add-timestamp-to-elasticsearch-with-elasticsearch-py-using-bulk-api)
    * [Bulk APIedit](https://www.elastic.co/guide/en/elasticsearch/reference/1.4/docs-bulk.html)

## Amazon Elasticsearch Service Slow Logs
  * [Analyzing Amazon Elasticsearch Service Slow Logs Using Amazon CloudWatch Logs Streaming and Kibana](https://aws.amazon.com/tw/blogs/database/analyzing-amazon-elasticsearch-service-slow-logs-using-amazon-cloudwatch-logs-streaming-and-kibana/) ** 這篇值得一讀
  * [Viewing Amazon Elasticsearch Service Slow Logs](https://aws.amazon.com/tw/blogs/database/viewing-amazon-elasticsearch-service-slow-logs/)

## ELK course
  * [Complete Guide to Elasticsearch](https://www.udemy.com/course/elasticsearch-complete-guide/)
    * [codingexplained/complete-guide-to-elasticsearch](https://github.com/codingexplained/complete-guide-to-elasticsearch)
    * [kibana demo](https://tinyurl.com/ya5p2234)

  * console command on kibana
    * [Nodes info API](https://www.elastic.co/guide/en/elasticsearch/reference/current/cluster-nodes-info.html#cluster-nodes-info) 

## 將 mysql 轉換成 json
  * [sethblack/mysql-to-json](https://github.com/sethblack/mysql-to-json) Connects to a MySQL database and exports selected data to JSON.
    * pre-install pkg
```
$ sudo yum install mysql-devel
$ sudo yum list | grep python3 | grep dev
$ sudo yum install python36-devel
```
    * example
```
$ mysql-to-json -e 'SELECT * FROM information_schema.tables' > tables.json
```
  * 用自己改的一版來由 sql result to elasticsearch bulk json
    * [wokuang/mysql-to-json](https://github.com/wokuang/mysql-to-json)

## 在 AWS EC2 上安裝 docker - 目前改用 AWS 的 elasticsearch service 來玩
  * [Docker and Docker-Compose Setup on AWS EC2 Instance](https://medium.com/@khandelwal12nidhi/docker-setup-on-aws-ec2-instance-c670ff3d5f1b)
  * [How to install Docker on AWS EC2 instance with AMI (CE/EE Update)](https://serverfault.com/questions/836198/how-to-install-docker-on-aws-ec2-instance-with-ami-ce-ee-update)
