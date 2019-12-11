# List python running on Mac reference

## 當 python 升級後，舊有的 virtual env 會失效
  * 原因：virtual env 對應的 python version 被刪除
  * 暫解：用 symbolic link 的方式來設定
```
## 範例, 將 3.7.5 指到 3.7.3 上
$ ln -s /usr/local/Cellar/python/3.7.5 /usr/local/Cellar/python/3.7.3
```
  * 較好的方式，還是另外建立一個 virtual env

