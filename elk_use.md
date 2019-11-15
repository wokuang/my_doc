# List ELK information

## 使用 AWS Elasticsearch Service
  * [Amazon Elasticsearch Service 入門](https://docs.aws.amazon.com/zh_tw/elasticsearch-service/latest/developerguide/es-gsg.html)

## 在 AWS EC2 上安裝 docker
  * [Docker and Docker-Compose Setup on AWS EC2 Instance](https://medium.com/@khandelwal12nidhi/docker-setup-on-aws-ec2-instance-c670ff3d5f1b)
  * [How to install Docker on AWS EC2 instance with AMI (CE/EE Update)](https://serverfault.com/questions/836198/how-to-install-docker-on-aws-ec2-instance-with-ami-ce-ee-update)

## insert elasticSearch index
  * [How to use Python helpers to bulk load data into an Elasticsearch index](https://kb.objectrocket.com/elasticsearch/how-to-use-python-helpers-to-bulk-load-data-into-an-elasticsearch-index)
  * [How to use Bulk API to store the keywords in ES by using Python](https://stackoverflow.com/questions/20288770/how-to-use-bulk-api-to-store-the-keywords-in-es-by-using-python)
  * 要加入 timestamp 的方式
    * [Add Timestamp to ElasticSearch with Elasticsearch-py using Bulk-API](https://stackoverflow.com/questions/31994187/add-timestamp-to-elasticsearch-with-elasticsearch-py-using-bulk-api)
    * [Bulk APIedit](https://www.elastic.co/guide/en/elasticsearch/reference/1.4/docs-bulk.html)

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
