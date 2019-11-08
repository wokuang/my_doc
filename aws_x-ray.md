# List AWS X-Ray information

## reference
  * [Using AWS X-Ray](https://docs.aws.amazon.com/en_us/lambda/latest/dg/lambda-x-ray.html) - AWS 說明文件
  * [aws/aws-xray-sdk-python](https://github.com/aws/aws-xray-sdk-python)
    * AWS X-Ray SDK for the Python programming language

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
