# List python crawler information

## 套件簡介 Python爬蟲，主要是透過以下幾個套件達成:
  * requests: 用來對目標網頁的server發出requests，底層是urllib。
  * BeautifulSoup: 用來解析html，底層是re(正則表達式)。
  * pandas: 用來爬取表格很方便。
  * selenium: 原本的網頁測試工具，用來應付麻煩的javascript。
  * re: 正則表達式，用來取出技術性比較高的文字段落。

## reference
  * [iterator和generator和crawler雜談之三](https://ithelp.ithome.com.tw/articles/10194276)
    * 用 requests負責作為發送request和接收resopnse的接口
    * 用 BeautifulSoup 來解析網頁原始碼的標籤元素
