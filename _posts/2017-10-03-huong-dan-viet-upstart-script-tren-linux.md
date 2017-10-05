---
layout: post
title: Tìm hiểu về Upstart System Event trên Ubuntu
description: Tìm hiểu về upstart script trên ubuntu
permalink: "/devops/tim-hieu-ve-upstart-system-event-tren-ubuntu"
categories:     
    - "devops"
    - "backend"
---

# Trình tự để viết Upstart script trên Ubuntu

https://mikewilliamson.wordpress.com/2015/08/26/running-a-rails-app-with-systemd-and-liking-it/

https://coreos.com/os/docs/latest/getting-started-with-systemd.html

[Link tham khảo](https://www.digitalocean.com/community/tutorials/the-upstart-event-system-what-it-is-and-how-to-use-it)

https://wiki.ubuntu.com/SystemdForUpstartUsers

```
- Cài đặt package
- Viết script thử nghiệm
- Kiểm tra script syntax
- Chạy thử
- Chú ý
```

## Cài đặt package

```
sudo apt install upstart
```

## Viết script thử nghiệm

/etc/init/examplejob.conf

```
description "A test job file for experimenting with Upstart"
author "misostack"

start on runlevel [2345]

exec echo example job ran at  `date` >> /home/ubuntu/example-job.log
```

## Kiểm tra script syntax

```
init-checkconf /etc/init/examplejob.conf
```

## Chạy thử

```
sudo service <servicename> <control>

restart: this will stop, then start a service
start: this will start a service, if it's not running
stop: this will stop a service, if it's running
status: this will display the status of a service
```

## Chú ý

```
TH1:
  Trong bài viết đang hướng dẫn cho ubuntu 14
  Trường hợp Ubuntu 15.04 trở lên check : https://wiki.ubuntu.com/SystemdForUpstartUsers
  để convert sang

TH2:
  Nếu bạn viết trên window và đồng bộ qua vagrant, chú ý sử dụng notepad++ convert EOL
  sang Unix/OSX format
```

# Hướng dẫn viết upstart script cho rails 5 để tự động chạy web server trên ubuntu 16

https://www.ubuntudoc.com/how-to-create-new-service-with-systemd/

```

```