# List AWS X-Ray information

## reference
  * [Using AWS X-Ray](https://docs.aws.amazon.com/en_us/lambda/latest/dg/lambda-x-ray.html) - AWS 說明文件
  * [aws/aws-xray-sdk-python](https://github.com/aws/aws-xray-sdk-python)
    * AWS X-Ray SDK for the Python programming language
  * serverless framework 設定

## How-to guides, blogs and sample
  * [aws-samples/aws-xray-rekognition-lambda-sample](https://github.com/aws-samples/aws-xray-rekognition-lambda-sample)
    * Sample demonstrating AWS X-Ray instrumentation on Amazon Rekognition apps written on AWS Lambda
  * [Analyzing Performance for Amazon Rekognition Apps Written on AWS Lambda Using AWS X-Ray](https://aws.amazon.com/tw/blogs/compute/analyzing-performance-for-amazon-rekognition-apps-written-on-aws-lambda-using-aws-x-ray/)

## slide 說明
  * [Debug your Container and Serverless Applications with AWS X-Ray in 5 Minutes - AWS Online Tech Talks](https://www.slideshare.net/AmazonWebServices/debug-your-container-and-serverless-applications-with-aws-xray-in-5-minutes-aws-online-tech-talks)
  
## How to add python lambda code
  * [AWS X-Ray](https://docs.datadoghq.com/integrations/amazon_xray/?tab=python)
  * python package
    * Install the X-Ray tracing library
```
$ pip install aws-xray-sdk
```

  * python lambda code
```
from aws_xray_sdk.core import xray_recorder
from aws_xray_sdk.core import patch_all
patch_all()
```
