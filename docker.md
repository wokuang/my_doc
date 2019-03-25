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

## Reference
  * [docker中如何删除image（镜像）](http://yaxin-cn.github.io/Docker/how-to-delete-a-docker-image.html)
  * [建立 private 的 Docker Registry](https://ithelp.ithome.com.tw/articles/10191213)
