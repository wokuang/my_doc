# List the AWS s3 document

## S3 path deprecation plan
  * [Amazon S3 Path Deprecation Plan – The Rest of the Story](https://aws.amazon.com/tw/blogs/aws/amazon-s3-path-deprecation-plan-the-rest-of-the-story/)

## security reference
  - [How to Better Structure AWS S3 Security](https://www.varonis.com/blog/how-to-better-structure-aws-s3-security/)

## 設定 S3 為 static web site
  * 用 S3 的 permission 設定，可以設定為 static web site，不過這方式僅能 support http 連線
  * [Example: Setting up a Static Website Using a Custom Domain](https://docs.aws.amazon.com/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html)
  * 要設定為 https 的連線，需要搭配 CloudFront
    * [使用 AWS S3, Cloudfront 部屬 Custom Domain HTTPS 靜態網頁](https://medium.com/@david74.chou/%E4%BD%BF%E7%94%A8-aws-s3-cloudfront-%E9%83%A8%E5%B1%AC-custom-domain-https-%E9%9D%9C%E6%85%8B%E7%B6%B2%E9%A0%81-eddd9c9ad9d1)
      * 這邊有個雷，因為 Cloudfront 只支援 us-east-1 的 ACM certificate，所以切記要先切到 us-east-1 region 再來申請 SSL 憑證啊
    * [Moving a static website to AWS S3 + CloudFront with HTTPS](https://medium.com/@willmorgan/moving-a-static-website-to-aws-s3-cloudfront-with-https-1fdd95563106)
    * [Simple site hosting with Amazon S3 and HTTPS](https://www.freecodecamp.org/news/simple-site-hosting-with-amazon-s3-and-https-5e78017f482a/)
