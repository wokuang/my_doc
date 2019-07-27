# List AWS cli command

## 設定相關的 CloudWatch 資料
  * 設定 Log Group retention script
```
aws logs describe-log-groups --log-group-name-prefix /aws/lambda/cloud-update-dev- | jq '.logGroups[].logGroupName' | head -1 | xargs aws logs put-retention-policy --retention-in-days 14 --log-group-name
```


