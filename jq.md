## List the document about jq
  - [json 轉檔萬用瑞士刀 jq](https://newtoypia.blogspot.com/2015/03/json-jq.html)
  - [觀看 JSON 的新工具：jq](https://ithelp.ithome.com.tw/articles/10130071)

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
