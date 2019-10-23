# List DNS information

## Query NS record
  * dig command
```
  $ dig @8.8.8.8 +short NS txone-networks.com
```

## Trace DNS command
```
  $ dig +trace @8.8.8.8 odc-stg.cs.txone-networks.com
  $ dig +trace +short @8.8.8.8 odc-stg.cs.txone-networks.com
```

## reference
  * [How To Use nslookup Command & Dig Command For DNS Check Test](https://www.a2hosting.com/kb/getting-started-guide/internet-and-networking/troubleshooting-dns-with-dig-and-nslookup)
  * [Dig 常用參數 與 DNS 偵錯追蹤](https://blog.longwin.com.tw/2013/03/dig-dns-query-debug-2013/)
  * [How do I find the authoritative name-server for a domain name?](https://stackoverflow.com/questions/38021/how-do-i-find-the-authoritative-name-server-for-a-domain-name)
