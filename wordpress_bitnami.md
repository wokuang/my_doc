# List install wordpress using bitnami document

## Install
  * 在 AWS 上，安裝 wordpress 就是用 bitnami pack 過的

## Setting & Path
  * user: bitnami 
  * wordpress path
    * /opt/bitnami/apps/wordpress
    * /opt/bitnami/apps/wordpress/htdocs

## 重啟 apache
  * $ sudo /opt/bitnami/ctlscript.sh restart apache
  * [Start Or Stop Services](https://docs.bitnami.com/aws/infrastructure/lamp/administration/control-services/)

## Reference
  * [Bitnami 一鍵全自動在本機電腦架設WordPress平台](https://www.minwt.com/website/wordpress/17625.html)
