---
layout: project
title: 2.Getting start
description: how to do
order: 2
tags: 
    - "dr-adm"
---

# I.New API

> - Tạo nhánh mới
> - Tạo cấu trúc thư mục mới

## Tạo nhánh mới

```
git branch newapi
git checkout newapi
```

## Tạo cấu trúc thư mục mới

```
lib/module_name/newapi
lib/module_name/newapi.rb
lib/module_name/newapi/authentication.rb
lib/module_name/newapi/client.rb
```

## Load new api trong module

```
require 'module_name/newapi'
```

# Quy tắc

```
- Viết test trước
- Viết function thực thi cho đến khi test đúng
```