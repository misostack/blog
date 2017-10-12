---
layout: project
title: 4.Application Structure - ror-todolist
order: 4
description: "Application Structure" 
tags: 
    - "ror-todolist"
---

## I.Overview

>**Ứng dụng sẽ bao gồm 3 phần:**
>
>**1.Admin** (namespace)
> 
> - Rails MVC
> 
> **2.User** ( namespace )
> 
> - Rails MVC
> 
> **3.Api** ( module )
> 
> - Rails API
> - Được dùng cho ứng dụng khác sử dụng API này
> 
> **Các thành phần khác**
> 
> - **Database** : PostgreSQL
> - **Layout** : Bootstrap
> - **ClientScript** : Coffee Script

## II.Khởi động

> - Setup new rail project
> - Install database và gem tương ứng
> - Tạo database
> - Install gem và chạy thử lần đầu
> - Thiết lập lại cấu hình database
> - Tạo test scaffold trước để thử kết nối database
> - Remove test scaffold
> - Cài đặt bootstrap
> - Phát triển admin trước
>   - Chức năng quản lí tài khoản admin
>   - Tích hợp testing- các bước về sau luôn test
>   - Đăng nhập, đăng xuất
>   - Tích hợp bootstrap
>   - Thiết lập form generate
>   - Cấu hình lại generator
>   - Chức năng quản lí tài khoản user
>   - Chức năng gửi email invite user

## Trình tự khi phát triển 1 tính năng mới

> - Tạo branch mới từ develop
> - Thiết kế flow
> - Generate routes, controller, model, views
> - Phân tích class attributes, table fields
> - Migrate data
> - Generate dummy data
> - ...

### Setup rails project

>options: mysql/postgresql/sqlite3/oracle/frontbase/ibm_db/sqlserver/jdbcmysql/jdbcsqlite3/jdbcpostgresql/jdbc
>default:sqlite3

```
cd /home/ubuntu/webs
rails new ror-todolist --database=postgresql --skip-bundle
```

# Install database và gem tương ứng

### Tạo database

```
sudo -i -u postgres
psql
\q # exit
\du # list user
\q # exit
```

**Create user**

```
createuser ror_todolist
```

**Create db**

```
createdb ror-todolist_development
createdb ror-todolist_test
createdb ror-todolist_production
```

**Alter roles**
```
psql
alter user ror_todolist with encrypted password '123456';
```

**Grant privileges**

```
grant all privileges on database "ror-todolist_development" to ror_todolist;
```

>psql: FATAL:  Peer authentication failed for user "ror_todolist"

**Enable peer**

**/etc/postgresql/9.5/main/pg_hba.conf**

```
local   all             postgres                                peer


# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     peer
# IPv4 local connections:
host    all             all             127.0.0.1/32            md5
# IPv6 local connections:
host    all             all             ::1/128                 md5
# Allow replication connections from localhost, by a user with the
# replication privilege.
#local   replication     postgres                                peer
#host    replication     postgres        127.0.0.1/32            md5
#host    replication     postgres        ::1/128                 md5
host    replication     ror_todolist        127.0.0.1/32            md5

```

```
sudo service postgresql restart
psql --username=ror_todolist -W -d "ror-todolist_development" -h 127.0.0.1
```

http://www.postgresqltutorial.com/postgresql-cheat-sheet/

### Install gem và chạy thử lần đầu

```
cd /home/ubuntu
mkdir -p shared/pids shared/bundle shared/sockets
cd /home/ubuntu/webs/ror-todolist
gem list | grep bundler
gem install bundler
bundler install --path=/home/ubuntu/shared/bundle
rails server
```

### Thiết lập lại cấu hình database

```

```

### Tạo test scaffold trước để thử kết nối database



# Application packages need
# 1.Bootstrap 4
gem 'bootstrap', '4.0.0.beta'

# 2.jquery
gem 'jquery-rails', '4.3.1'

# 3.popper
gem 'popper_js', '1.11.1'

# 4.api
gem 'grape'
```