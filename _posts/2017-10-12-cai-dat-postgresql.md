---
layout: post
title: Hướng dẫn cài đặt PostgreSQL
order: 
description: "Hướng dẫn cài đặt PostgreSQL và 1 số câu lệnh cơ bản" 
categories: 
    - "database"
---

# Install

```
sudo apt-get update
sudo dpkg --configure -a
sudo apt-get install postgresql postgresql-contrib
```

## postgresql và rails

**Cần cài đặt gem này trước khi run project rails sử dụng db postgresql**
```
Postgresql gem
psycopg: Error: b'You need to install postgresql-server-dev-X.Y for building a server-side extension or libpq-dev for building a client-side application.\n'
```

```
sudo apt-get install libpq-dev build-essential
gem install pg -v '0.21.0'
```