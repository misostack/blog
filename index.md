---
layout: home
title : "Technical blog from misostack"
description : "Tips, tools for programming, includes : web, ops, app, ..."
---

## Jekyll & Markdown Refs

- [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)

- [Jekyll layout](https://learn.cloudcannon.com/jekyll/introduction-to-jekyll-layouts/)

- [Jekyll links](http://jekyllrb.com/docs/templates/#link)

## Sử dụng jekyll tạo tài liệu

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
