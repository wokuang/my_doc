# List the docker use
## docker command
  * 刪除多筆 image 資料
    * In order to delete all images, use the given command
```
docker rmi $(docker images -q)
```
    * In order to delete all containers, use the given command
```
docker rm $(docker ps -a -q)
```
  * skip 刪除 alpine image 
```
$ docker rmi $(docker images | grep -v alpine  | awk '{print $3}' | sed -n '1d;p') 
```

## [全面易懂的Docker指令大全](https://legacy.gitbook.com/book/joshhu/dockercommands/details) 閱讀筆記
  * 這篇寫的滿好的，要多看看

  * 列出本機映像檔docker images
```
$ docker images
$ docker images -a
```

  * 一次刪掉所有映像檔，可以配合Linux的批次指令來一次清乾淨所有的映像檔
```
$ docker rmi -f $(docker images -aq)
```

   * 替本機映像檔加標籤名稱docker tag
```
$ docker tag joshhu/webdemo:latest joshhu/webdemo:u14
```

  * 上傳映像檔docker push
```
$ docker push <username>/<repo name>:<Tag name>
```

  * Container是Docker的靈魂
    * 對Container來說，沒有執行docker run/create之前，Container根本不存在，更沒有所謂活著或死掉的問題。執行docker run/create之後，Container才會誕生，開始消耗系統資源(由Linux核心提供)，就是活著。執行完畢的Container，就是死的Container，但是並沒有消失，還是存在的。要執行docker rm <container>指令後，Container才會消失。

  * 列出所有的Container，包括已經執行結束的(即死掉的Container)。
```
$ docker ps -a
```

  * 列出所有 docker 的 stats 
```
docker ps | awk 'NR>1 {print $NF}'| xargs docker stats
```

  * 刪除特定名稱的 docker container
```
$ docker ps -a | grep cow | awk 'NR>1 {print $1}' | xargs docker rm
```

  * 建立並啟動Container：docker run/create
```
$ docker run busybox echo "hello world"
hello world
```
    * 短短一個指令，其實已經經過了Container的建立、執行、停止等步驟了。
      * docker run：Container建立並執行。
      * busybox：建立這個Container的映像檔。
      * echo "hello world"：Container中執行echo "hello world"指令，並且將結果輸出到Container所代表的標準輸出上。
      * 執行完之後，Container就停止，但還是存在!!。

  * 給Container標準輸出輸入裝置
    * Container可被視為一台獨立的電腦，因此當然可以有鍵盤及螢幕。但這邊所謂的鍵盤螢幕，就是Linux的輸入裝置stdin及輸出裝置stdout。
      * -t：attach時Container的螢幕會接到原來的螢幕上。
      * -i：attach時鍵盤輸入會被Container接手

  * [執行中的Container](https://joshhu.gitbooks.io/dockercommands/content/Containers/DockerRunMore.html) ** 多看幾次

## 讓 docker 讀外部的資料 (volumn)
  * [Docker 實戰系列（三）：使用 Volume 保存容器內的數據](https://larrylu.blog/using-volumn-to-persist-data-in-container-a3640cc92ce4)

## docker 遇到一些神奇的問題
  * 在 docker 中，無法順利的執行 curl 取回資料，會出現 timeout
  * 在 container 執行某個 curl 網址會異常，host 可正常執行
```
$ curl -v "https://apigateway.us-west-2.amazonaws.com/domainnames/sig-dev.cs.txone-networks.com/basepathmappings"
```
  * 解法：host上面的mtu，跟container裡面的不同，似乎導致了封包異常。修改 MTU 後，恢復正常
  * [How we spent a full day figuring out a MTU issue with docker](https://medium.com/@sylwit/how-we-spent-a-full-day-figuring-out-a-mtu-issue-with-docker-4d81fdfe2caf)

## Reference
  * [docker中如何删除image（镜像）](http://yaxin-cn.github.io/Docker/how-to-delete-a-docker-image.html)
  * [建立 private 的 Docker Registry](https://ithelp.ithome.com.tw/articles/10191213)
  * [Docker 實戰系列（三）：使用 Volume 保存容器內的數據](https://larrylu.blog/using-volumn-to-persist-data-in-container-a3640cc92ce4)
