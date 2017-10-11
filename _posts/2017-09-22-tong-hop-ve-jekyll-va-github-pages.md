---
title: Tổng hợp về jekyll và github pages
description: "Hướng dẫn từ cơ bản đến cao sử dụng jekyll để tạo github pages" 
permalink: "jekyll-first-tips" 
layout: post
order: 1

categories: 
    - "jekyll"
---

## Jekyll & Markdown Refs

- [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)

- [Jekyll layout](https://learn.cloudcannon.com/jekyll/introduction-to-jekyll-layouts/)

- [Jekyll links](http://jekyllrb.com/docs/templates/#link)

- [Liqud Template](https://shopify.github.io/liquid/filters/replace/)

## Sử dụng jekyll tạo tài liệu

Liquid Layout Ref : [help.shopify.com/themes/liquid/basics/handle](https://help.shopify.com/themes/liquid/basics/handle)

Liquid layout array : [help.shopify.com/themes/liquid/filters/array-filters#sort](https://help.shopify.com/themes/liquid/filters/array-filters#sort)

## Những command thông dụng trong jekyll

Command | Công dụng
------------ | -------------
bundle exec jekyll serve | Serve jekyll at [localhost:port](http://localhost:4000)
bundle exec jekyll page "Page Name" | Tạo page mới
bundle exec jekyll post "Post Name" | Tạo post mới

## Example format

### page

*create*

```
bundle exec jekyll page "Page Name"
```

*modify page-name.md*

```
---
layout: page
title: Page title
description: short description
---

Content

```

### post

*create*

```
bundle exec jekyll post "Post Name"
```

*modify _posts/yyyy-mm-dd-post-name.md*

```
---
title: Tổng hợp về jekyll và github pages
description: "Hướng dẫn từ cơ bản đến cao sử dụng jekyll để tạo github pages" 
permalink: "/category-name/post-name" 
layout: post

categories: 
    - "category-name"
---

Content

```

## Hướng dẫn tạo document sử dụng jekyll

Tổng quan cấu trúc thư mục
```
  Trang chủ
  Về tôi
  -Danh mục
  --Bài viết
```

Liquid Layout Ref : https://help.shopify.com/themes/liquid/basics/handle

Liquid layout array : https://help.shopify.com/themes/liquid/filters/array-filters#sort

### Bước 1 : Cài đặt

*Cài đặt bundle*

```
gem install bundler
```

**Tạo thư mục chứa document**

```
mkdir document
```

**Copy file Gemfile này vào thư mục chứa document**

[Gemfile](/assets/files/posts/tong-hop-ve-jekyll-va-github-pages/Gemfile)

**Nội dung Gemfile**

```
source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
gem "jekyll", "~> 3.5.2"

# This is the default theme for new Jekyll sites. You may change this to anything you like.
# gem "minima", "~> 2.0"

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
gem "github-pages", group: :jekyll_plugins

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.6"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# compose
gem 'jekyll-compose', group: [:jekyll_plugins]

```

**Cài đặt**

```
cd document
bundler install
```

### Bước 2 : Tạo trang

```
bundle exec jekyll page "Page Name"
```

**Layout trang**

```
---
layout: page
title: Contact
description: Thông tin liên hệ
---

Nội dung

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

```
vi _category/category-name.md
```

**Layout danh mục**

```
---
tag: app
permalink: "/category/app"
description: "Tổng hợp các bài viết dành cho app developer : ios, android, hybrid app"
---
```

### Bước 4: Tạo bài viết

```
bundle exec jekyll post "Post Name"
```

**Layout bài viết**

```
---
layout: post
title: Ruby on Rails toan tap ve ruby
description: Bảng tham khảo về ruby
permalink: "/ruby-and-rails/toan-tap-ve-ruby"
categories: 
    - "backend"
    - "ruby-and-rails"
---

Nội dung

```