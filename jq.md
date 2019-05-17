## List the document about jq
  - [json 轉檔萬用瑞士刀 jq](https://newtoypia.blogspot.com/2015/03/json-jq.html)
  - [觀看 JSON 的新工具：jq](https://ithelp.ithome.com.tw/articles/10130071)

## 如何將 jq 的結果, 另存新檔
  * [Write output to a file after piped to jq](https://stackoverflow.com/questions/48964305/write-output-to-a-file-after-piped-to-jq)
  * Try jq '.' (i.e: pretty-print the input JSON)
```
$ cat tmp_request.json | jq '.' > tmp_request_jq.json
```

## document
  * [jq Manual](https://stedolan.github.io/jq/manual/)
    * 點選 [run](https://jqplay.org/jq?q=.%5B%22foo%22%5D%3F&j=%7B%22foo%22%3A%2042%7D) 會出現可以試 filter 的 web       

## List some useful filter
  * 列出所有的 keys 來
```
$ cat meta_en-US.json| jq 'keys'
```
  * 列出某一個 key 的第一筆資料
```
$ cat meta_en-US.json| jq '.IPSInfo[0]'
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
