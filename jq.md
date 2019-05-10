## List the document about jq
  - [json 轉檔萬用瑞士刀 jq](https://newtoypia.blogspot.com/2015/03/json-jq.html)
  - [觀看 JSON 的新工具：jq](https://ithelp.ithome.com.tw/articles/10130071)

## 如何將 jq 的結果, 另存新檔
  * [Write output to a file after piped to jq](https://stackoverflow.com/questions/48964305/write-output-to-a-file-after-piped-to-jq)
  * Try jq '.' (i.e: pretty-print the input JSON)
```
$ cat tmp_request.json | jq '.' > tmp_request_jq.json
```

## 一些範例
`bash
$ aws lambda list-functions | jq '.Functions[].FunctionName'
`

result
`bash
"updateSaveInfo"
"cy-post"
"getCompList"
"cy-first"
`
