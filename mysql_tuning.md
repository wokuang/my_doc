# List mysql tuning information
## document
  * [Best practices for configuring parameters for Amazon RDS for MySQL, part 1: Parameters related to performance](https://aws.amazon.com/tw/blogs/database/best-practices-for-configuring-parameters-for-amazon-rds-for-mysql-part-1-parameters-related-to-performance/)
  * [MySQL 5.7 Performance Tuning After Installation](https://www.percona.com/blog/2016/10/12/mysql-5-7-performance-tuning-immediately-after-installation/)

## 有關 AWS RDS 的 monitor
  * [Overview of Monitoring Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MonitoringOverview.html) 這篇很重要，要來看看

## 有關 RDS parameter groups 的調整
  * static parameter，要 reboot 才會生效
  * dynamic parameter，修改後就會生效
  * Dynamic parameters, 可以有 session level or global scope
  * [How do I modify the values of an Amazon RDS DB parameter group?](https://aws.amazon.com/tw/premiumsupport/knowledge-center/rds-modify-parameter-group-values/)
  * 顯示目前的 variable
```
$ show variables like "max_connections"; # 預設為 session level
$ show session variables like 'max_connections';
$ show global variables like 'max_connections';
```

## 目前有調整的參數
  * parameter groups 調整
    * interactive_timeout: 300 (s)
    * wait_timeout: 300 (s)
    * max_connections，由 64 改為 96，(instance: t3.micro, 1G RAM)
      * AWS 計算方式: {DBInstanceClassMemory/12582880}
  * reference
    * [What is the default mysql wait_timeout and interactive_timeout](https://stackoverflow.com/questions/21076306/what-is-the-default-mysql-wait-timeout-and-interactive-timeout)
    * [Changing MySQL wait_timeout variable](https://medium.com/@dilsimchandrasena/changing-mysql-wait-timeout-variable-f16ebed1efce)

## advance
  * [MySQL Performance Cheat Sheet](https://severalnines.com/database-blog/mysql-performance-cheat-sheet)
