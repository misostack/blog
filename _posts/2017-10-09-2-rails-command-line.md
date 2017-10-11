---
layout: post
title: 2.Rails command line
order: 2
description: "Hướng dẫn từ cơ bản đến cao về ruby & rails" 
categories: 
    - "ror"
---

# bundler

Command | Chức năng | Link tham khảo chi tiết về các params
------------ | --------- | ---------
bundler install --path=/home/ubuntu/shared/ | cai dat gem | &nbsp;
bundler update | cap nhat gem | &nbsp;
bundler exec rake|rails | thuc thi cau lenh | &nbsp;

# rails common

Command | Chức năng | Link tham khảo chi tiết về các params
------------ | --------- | ---------
rails command -h | hiện thị cách sử dụng command này | 
rails new | generate ứng dụng mới | [ref](https://gist.github.com/misostack/abd28538f746119ef92f112a2c805006)
rails server | chạy web server cho ứng dụng rails | [ref](https://gist.github.com/misostack/6f3214af9b29c9cf8cc4d8330a065abd)
rails generate -h | generator trong rails | [ref](https://gist.github.com/misostack/6c49305ae48adbe4ebf817bc574e9f93)

# assets pipeline

Command | Chức năng | Link tham khảo chi tiết về các params
------------ | --------- | ---------
rails assets:precompile | compile assets | &nbsp;

# database

Command | Chức năng | Link tham khảo chi tiết về các params
------------ | --------- | ---------
rails db:setup | create the database, load the schema and initialize it with the seed data. | [db migration](http://guides.rubyonrails.org/active_record_migrations.html)
rails db:migrate | migrate the database | &nbsp;
rails db:seed | To add initial data after a database is created | &nbsp;

# console

```
rails console
```

Command | Chức năng | Link tham khảo chi tiết về các params
------------ | --------- | ---------
reload! | reload models,controllers,... | &nbsp;

# kill process

```
ps aux | grep puma
sudo kill -9 [pid]
```

