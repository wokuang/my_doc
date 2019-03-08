# 記錄在 AWS serverless 上，針對大檔的處理
在 api gateway & lambda 都對回傳的 payload 有限制
  - API Gateway payload 10M
  - Lambda payload 6M

google 後，看幾篇的文章介紹後，大多都是建議使用 presign url 的方式    

```
        # URL only works for 60 seconds
        url = s3_client.generate_presigned_url(
            'get_object',
            Params={'Bucket': overflow_bucket, 'Key': filename},
            ExpiresIn=60)
```

## presigned URL document
  - [boto3 Generating Presigned URLs](https://boto3.amazonaws.com/v1/documentation/api/latest/guide/s3.html#generating-presigned-urls)
  - [Share an Object with Others](https://docs.aws.amazon.com/en_us/AmazonS3/latest/dev/ShareObjectPreSignedURL.html)
  - [Uploading Objects Using Presigned URLs](https://docs.aws.amazon.com/en_us/AmazonS3/latest/dev/PresignedUrlUploadObject.html)

## Sample Code
  - [Stackery S3 Signed URLs Example repo!](https://github.com/stackery/s3-signed-urls-example/blob/master/Stackery/functions/API%20Handler/index.js)

## reference
  - [Serving Binary Files Using Serverless APIs](https://www.stackery.io/blog/serving-binary-files-using-serverless/)
  - [Uploading Large Payloads through API Gateway](https://sookocheff.com/post/api/uploading-large-payloads-through-api-gateway/)
  - [API Gateway GET / PUT large files into S3](https://stackoverflow.com/questions/42967547/api-gateway-get-put-large-files-into-s3)
  - [re: A Lesson Learned In Going Serverless](https://dev.to/davidjfelix/comment/7b66)
  - [Lambda payload size workaround](https://seancoates.com/blogs/lambda-payload-size-workaround/)
  - [How do AWS Lambda and API Gateway services handle file upload?](https://www.quora.com/How-do-AWS-Lambda-and-API-Gateway-services-handle-file-upload)

## 有關 S3 的 authenticate
  - [Appendix B: Authenticating Requests (AWS Signature Version 2)](https://docs.aws.amazon.com/en_us/AmazonS3/latest/dev/auth-request-sig-v2.html)

