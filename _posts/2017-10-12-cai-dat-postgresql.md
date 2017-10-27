---
layout: post
title: Hướng dẫn cài đặt PostgreSQL
order: 
description: "Hướng dẫn cài đặt PostgreSQL và 1 số câu lệnh cơ bản" 
categories: 
    - "database"
---

# Windows

## install

- Download link : [postgresql](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads#windows)

## change password

C:\Program Files\PostgreSQL\9.6\data\pg_hba.conf

*md5* to *trust*

```
host    all             all             127.0.0.1/32            trust
# IPv6 local connections:
host    all             all             ::1/128                 trust
```

> then restart service and open cmd

```
psql -h 127.0.0.1 -U postgres
```

```
ALTER USER postgres with password '123456';
\q
```

*trust* to *md5* and **restart service**

```
psql -h 127.0.0.1 -U postgres
123456
```

# Ubuntu

## Install

```
sudo apt-get update
sudo dpkg --configure -a
sudo apt-get install postgresql postgresql-contrib
```

### postgresql và rails

**Cần cài đặt gem này trước khi run project rails sử dụng db postgresql**
```
Postgresql gem
psycopg: Error: b'You need to install postgresql-server-dev-X.Y for building a server-side extension or libpq-dev for building a client-side application.\n'
```

```
sudo apt-get install libpq-dev build-essential
gem install pg -v '0.21.0'
```