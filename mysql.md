# List mysql information

## 有太多的 sleep process
  * 下 $ show processlist 時，會出現許多的 sleep process
  * 因為 mysql 預設 wait_timeout 為 28800 seconds (8 hours)，還滿久的
  * 解法：修改 [wait_timeout](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_wait_timeout) & [interactive_timeout](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_interactive_timeout) 的值
  * [MySQL / MariaDB 設定 wait_timeout 限制 sleep 連線](https://www.opencli.com/mysql/mysql-wait-timeout-sleep-connections)
  * [How long is “too long” for MySQL Connections to sleep?](https://dba.stackexchange.com/questions/1558/how-long-is-too-long-for-mysql-connections-to-sleep)
  * [SHOW PROCESSLIST in MySQL command: sleep](https://stackoverflow.com/questions/12194241/show-processlist-in-mysql-command-sleep)
