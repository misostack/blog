---
title: Tổng hợp về jekyll và github pages
description: "Hướng dẫn từ cơ bản đến cao sử dụng jekyll để tạo github pages" 
permalink: "/miscellaneous/tong-hop-ve-jekyll-va-github-pages" 
layout: post

categories: 
    - "miscellaneous"
---

## Hướng dẫn tạo document sử dụng jekyll

Tổng quan cấu trúc thư mục
```
  Trang chủ
  Về tôi
  -Danh mục
  --Bài viết
```

Liquid Layout Ref : https://help.shopify.com/themes/liquid/basics/handle

### Bước 1 : Cài đặt

```
gem install bundler
bundler install
```

### Bước 2 : Tạo trang

```
bundle exec jekyll page "Page Name"
```

### Bước 3 : Tạo danh mục

config.yml
```
collections:
  category:
    output: true

defaults:
  -
    scope:
      path: ""
      type: category
    values:
      layout: "category"
```

### Bước 4: Tạo bài viết