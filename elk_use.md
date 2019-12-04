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
  * [將 CloudWatch Logs 資料串流至 Amazon Elasticsearch Service](https://docs.aws.amazon.com/zh_tw/AmazonCloudWatch/latest/logs/CWL_ES_Stream.html)
  * [Function Execution Role for Service Principals](https://docs.aws.amazon.com/en_us/AmazonCloudFront/latest/DeveloperGuide/lambda-edge-permissions.html#lambda-edge-permissions-function-execution)
  * [AWS - subscribe multiple lambda logs to one elasticsearch service](https://stackoverflow.com/questions/49045483/aws-subscribe-multiple-lambda-logs-to-one-elasticsearch-service/49157526) 設定多個 cloudWatch 到 aws es 時，會出現 error, 解法如文章所述
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

## Query String
  * [Elasticsearch/Kibana Queries - In Depth Tutorial](https://www.timroes.de/elasticsearch-kibana-queries-in-depth-tutorial)

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

## 建立 date format 的方式
  * 先建立 index, then 再用 mapping 的方式，先設定好 date format
  * 範例
```
# 建立 index
PUT /odc

# 設定 index mapping
PUT /odc/_mapping
{
    "properties": {
      "updated_at": {
        "type":   "date",
        "format": "yyyy-MM-dd HH:mm:ss||yyyy-MM-dd||epoch_millis"
      },
      "created_at": {
        "type":   "date",
        "format": "yyyy-MM-dd HH:mm:ss||yyyy-MM-dd||epoch_millis"
      }
    }
}
```

## 用 logstash 傳資料到，在 AWS ES 上
  * [Setup a Logstash Server for Amazon Elasticsearch Service and Auth With IAM](https://blog.ruanbekker.com/blog/2019/06/04/setup-a-logstash-server-for-amazon-elasticsearch-service-and-auth-with-iam/) ** 這篇要看看
  * [Logstash tutorial: A quick start guide](https://aws.amazon.com/tw/elasticsearch-service/resources/articles/logstash-tutorial/) ** 這篇要看看
  * [Kibana and Logstash](https://docs.aws.amazon.com/en_us/elasticsearch-service/latest/developerguide/es-kibana.html)
  * [How do I integrate Logstash with Amazon's Elasticsearch Service (ES)?](https://www.oreilly.com/learning/how_do_i_integrate_logstash_with_amazons_elasticsearch_service_es)
  * [awslabs/logstash-output-amazon_es](https://github.com/awslabs/logstash-output-amazon_es)
  * plugin 安裝
```
$ logstash-plugin install logstash-output-amazon_es
```
## 關於 index 操作的一些文件
  * [Index APIs](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices.html) ** 重要
    * [Create index](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html)
    * [Delete index](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-delete-index.html)
    * [Put mapping index](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-put-mapping.html)

## 一些常用到的 kibana console command
  * query index
```
GET /_cat/indices?v
```
  * 取得 index 資料
```
GET /index
GET /odc
```
  * 取得 index stats
```
GET /_stats
```

## geographical location
  * [Kibana GeoIP example: How to index geographical location of IP addresses into Elasticsearch](https://www.dataneb.com/post/kibana-geoip-example-how-to-index-geographical-location-of-ip-addresses-to-elasticsearch)
  * [GeoIP in the Elastic Stack](https://www.elastic.co/cn/blog/geoip-in-the-elastic-stack)
  * [How To Map User Location with GeoIP and ELK (Elasticsearch, Logstash, and Kibana)](https://www.digitalocean.com/community/tutorials/how-to-map-user-location-with-geoip-and-elk-elasticsearch-logstash-and-kibana)

## 使用 serverless 將資料放到 ES 中 
  * [miztiik/serverless-s3-to-elasticsearch-ingester](https://github.com/miztiik/serverless-s3-to-elasticsearch-ingester/blob/master/s3-to-es.py)

## 在 AWS EC2 上安裝 docker - 目前改用 AWS 的 elasticsearch service 來玩
  * [Docker and Docker-Compose Setup on AWS EC2 Instance](https://medium.com/@khandelwal12nidhi/docker-setup-on-aws-ec2-instance-c670ff3d5f1b)
  * [How to install Docker on AWS EC2 instance with AMI (CE/EE Update)](https://serverfault.com/questions/836198/how-to-install-docker-on-aws-ec2-instance-with-ami-ce-ee-update)

## 收集 AWS 使用資料
  * [Metricbeat overview](https://www.elastic.co/guide/en/beats/metricbeat/current/metricbeat-overview.html) 使用 metricbeat 來收集

## 中文說明
  * [Elasticsearch权威指南（中文版）](https://github.com/elasticsearch-cn/elasticsearch-definitive-guide) - 有空來看看

## public cloud 的比較
  * [AWS Elasticsearch Service 对比：Amazon 和 Elastic](https://www.elastic.co/cn/aws-elasticsearch-service)
  * [Elasticsearch Service on Elastic Cloud](https://aws.amazon.com/marketplace/pp/Elasticsearch-Inc-Elasticsearch-Service-on-Elastic/B01N6YCISK) AWS marketplace

## 將資料 feed 到 elastic search 的方式 
  * [jrbeilke/logstash-lambda](https://github.com/jrbeilke/logstash-lambda)
    * AWS lambda function to ship ELB, S3, CloudTrail, VPC, CloudFront logs to Logstash
  * [Functionbeat: Serverless Ingestion for Elasticsearch](https://www.elastic.co/cn/blog/functionbeat-serverless-ingestion-for-elasticsearch)

## monitoring
  * [Monitoring a critical part of your infrastructure: Amazon Elasticsearch domain](https://cloudonaut.io/monitoring-a-critical-part-of-your-infrastructure-amazon-elasticsearch-domain/)
  * [Monitoring AWS Lambda Invocations with the ELK Stack](https://logz.io/blog/lambda-elk/)

## reference
  * [Elasticsearch Tutorial](https://www.tutorialspoint.com/elasticsearch/elasticsearch_quick_guide.htm)
  * [Elasticsearch - Query DSL](https://www.tutorialspoint.com/elasticsearch/elasticsearch_query_dsl.htm)
  * [Elasticsearch Demo](https://jtran21.gitbooks.io/elasticsearch/content/index.html)
  * [AWS Centralized Logging Guide](https://coralogix.com/log-analytics-blog/aws-centralized-logging-guide/)

