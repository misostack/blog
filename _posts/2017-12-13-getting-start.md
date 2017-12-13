---
layout: project
title: Getting Start
description: Hướng dẫn toàn tập về Ruby & Rails
order: 1
tags:
    - "ror-tuts"
---

### Setup Environment

- [x] Install Ruby
- [x] Install Common gems
- [x] Install Rails

### Create your new controller, and set it as home page

```
rails g controller Welcome index
```

**Edit your config/routes.rb and add this**
```
root to: 'welcome#index'
```

### Custom your layout with bootstrap

**Add bootstrap to your Gemfile**

https://github.com/twbs/bootstrap-rubygem

```
# application gems

gem 'bootstrap', '~> 4.0.0.beta2.1'
gem 'jquery-rails'
```

```
bundler install
```

**Rename your application.css to application.scss, also add this**

```
@import "bootstrap";
```

**Add bootstrap dependencies javascript to your application.js**
```
//= require jquery3
//= require popper
//= require bootstrap
```

### Assets basic
