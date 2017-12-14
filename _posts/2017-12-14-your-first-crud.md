---
layout: project
title: Your first CRUD
description: Hướng dẫn toàn tập về Ruby & Rails
order: 2
tags:
    - "ror-tuts"
---

### Create your env variables

**Log in as root**

```
sudo su
mkdir /etc/shared
nano /etc/shared/.env
chmod 644 /etc/shared/.env
```

**/etc/shared/.env**

```
export DB_HOST="127.0.0.1"
export DB_PORT="3306"
export DB_NAME="qlnb_api_development"
export DB_USERNAME="qlnb_api"
export DB_PASSWORD="12345678"
```

**Load env before running**

```
source /etc/shared/.env # add this line

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

```

**reload**

```
source /etc/bash.bashrc
```

**test**

```
echo $DB_HOST
```

### Create your databases and change db config

https://dev.mysql.com/doc/refman/5.7/en/grant.html

```
mysql -uroot -p123456 # for example
```

```
mysql > show databases;
mysql > select user, host from mysql.user;
```

**config/database.yml**

```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  database: <%= ENV['DB_NAME'] %>
  username: <%= ENV['DB_USERNAME'] %>
  password: <%= ENV['DB_PASSWORD'] %>
  host: <%= ENV['DB_HOST'] %>
  port: <%= ENV['DB_PORT'] %>
  socket: /var/run/mysqld/mysqld.sock

development:
  <<: *default
```

**create databases**

```
mysql > CREATE DATABASE IF NOT EXISTS qlnb_api_development;
```

**create user**

```
mysql > CREATE USER IF NOT EXISTS 'qlnb_api'@'localhost' IDENTIFIED BY '12345678';

GRANT ALL ON qlnb_api_development.* TO 'qlnb_api'@'localhost';
```

### Generate scaffolding

```
rails generate scaffold Page title:string description:string content:string
rails db:migrate:status
```
