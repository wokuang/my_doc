# List mysql & timezone information

## client 連上後，自動設定的方式
方式：在 .my.cnf 上，加上 init_command 設定
```
[client]
init_command="SET time_zone='+8:00'; use txone"
host = <mysql_host_name> 
```

## reference
  * [關於時區(一)](https://medium.com/@justinlee_78563/%E9%97%9C%E6%96%BC%E6%99%82%E5%8D%80-4bfada7bd23d)
  * [How to persistently set MySQL (Linux mysql command) session time zone to UTC?](https://dba.stackexchange.com/questions/151182/how-to-persistently-set-mysql-linux-mysql-command-session-time-zone-to-utc/210805#210805)
