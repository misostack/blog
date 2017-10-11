---
layout: ror2017
title: 1.Khoi tao du an
order: 1
description: "Hướng dẫn từ cơ bản đến cao về ruby & rails" 
permalink: "/ror2017/1-khoi-tao-du-an"
categories: 
    - "backend"
    - "ruby-and-rails"
    - "ror2017"
---

# Cài đặt rails box

**Môi trường phát triển**

> - System : Ubuntu 16.04
> - Stack : Rails + Nginx
> - Database : mysql

**Những thứ cần cài đặt và cấu hình**

> **Rails 5**:
> 
> - ruby dependencies
> - rvm
> - Ruby version: 2.4.2
> - nodejs
> - gem bundler
> - rails 5.1.4
> 
> **Database**
> 
> - Cài đặt Mysql
> - Create user
> - Create database
> 
> **Nginx**
> 
> - Cài đặt
> - Cấu hình

**Box đã có sẵn + howtodo tips**

[Everthing you need](https://bitbucket.org/sonnmpersonal/ubuntu-xenial1604-ror)

# Starting new application with rails 5

**Create new app**

```
app folder : ror-simple-todolist-app
```

```
cd /home/ubuntu/webs
rails new ror-simple-todolist-app --database=mysql --skip-bundle
```

** Create shared folders **

```
cd /home/ubuntu/
mkdir -p shared/pids shared/bundle shared/sockets
```

**Install requirement gems **

http://bundler.io/v1.15/man/bundle.1.html

```
bundler COMMAND [--no-color] [--verbose] [ARGS]


```

- Custom gem path

[bundler.io/man/bundle-install.1.html](http://bundler.io/man/bundle-install.1.html)

```
cd /home/ubuntu/webs/ror-simple-todolist-app
bundler install --path=/home/ubuntu/shared/
```

** Running new app **

```
rails server -h
mkdir -p /home/ubuntu/shared/pids/
rails server -d --pid=/home/ubuntu/shared/pids/todoapp.pid --binding=0.0.0.0
```