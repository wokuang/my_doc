## Use to log the ubuntu service setting document
  * conf path: /lib/systemd/system
  * 建立 or 修改檔案後，需要執行
    * $ systemctl daemon-reload

  * 看 log 的方式
```
$ sudo journalctl --unit=my-webapp

# Use -n <# of lines> to view specified number of lines of log
$ sudo journalctl -f -n 1000 -u my-webapp

# same as tail -f
$ sudo journalctl -f -u my-webapp
```

## Reference
  * [Ubuntu service管理](https://chenhh.gitbooks.io/ubuntu-linux/content/service.html)
  * [Run your Java application as a Service on Ubuntu](https://medium.com/@sulmansarwar/run-your-java-application-as-a-service-on-ubuntu-544531bd6102)
