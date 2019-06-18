# List docker compose information

## document
  * [docker/compose](https://github.com/docker/compose) gitHub path
  * [Get started with Docker Compose](https://docs.docker.com/compose/gettingstarted/)

## command
  * 啟動 docker compose
```
$ docker-compose up
$ docker-compose up -d # run as daemon
```
  * 看 docker container
```
$ docker-compose ps
$ docker ps
```
  * 停 docker compose
```
$ docker-compose down
```
  * run 一次性的 command，於 container 中
```
$ docker-compose run web env
```

## Command-line completion 
  * [Command-line completion](https://docs.docker.com/compose/completion/) * 有用 oh-my-zsh 還滿好裝的

## reference
  * [Docker Compose 建置 Web service 起步走入門教學](https://blog.techbridge.cc/2018/09/07/docker-compose-tutorial-intro/)
