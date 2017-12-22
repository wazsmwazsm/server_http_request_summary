# server_http_request_summary

基于 httpry 的 parse_log.pl, 修改了 log_summary.pm 脚本用于支持 URL 统计

## 依赖

需要安装 httpry

Ubuntu : apt-get install httpry

## 功能

通过 httpry 实时统计服务器的 http 请求信息, 每 24 小时生成一个 summary log,
包括 URL、IP、状态码等访问频次统计

## 使用

```Shell
bash check.sh  # ( 需 root 权限, 可加 & 扔到后台执行 )
```

如果是 ssh 终端, 防止终端掉线后任务停止可以如下命令执行

```Shell
nohup bash check.sh &
```
