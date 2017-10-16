---
layout: project
title: 2.Ruby Basic phan I
order: 2
description: "Các thành phần cơ bản của ruby" 
tags: 
    - "ruby"
---

## 1. Khởi động

> - Cài đặt editor : RubyMine hoặc sublime
> - Kiểm tra version ruby
> - Viết hello word
> - Cài đặt filewatcher

```ruby
gem -v
```

**Tạo file hello.rb với nội dung sau**

```ruby
puts "Welcome to ruby"
```

**Chạy thử**

```bash
ruby hello.rb
Welcome to ruby
```

**Cài đặt filewatcher**

https://github.com/thomasfl/filewatcher

```bash
$ [sudo] gem install filewatcher
```

**Cách sử dụng filewatcher**

```
filewatcher -E -e "run.rb"
```

**Repo toàn bộ code cho phần ruby basic**

https://bitbucket.org/sonnmpersonal/ror-rubyol

## 2.Ruby Basic

**shared/colorme.rb**
```ruby
{% include ruby/shared/colorme.rb %}
```

**run.rb**

```ruby
{% include ruby/run.rb %}
```

#### 2.1. Syntax
```ruby
{% include ruby/ruby-syntax.rb %}
```

#### 2.2. Variables
```ruby
{% include ruby/ruby-variables.rb %}
```

#### 2.3. Class
```ruby
{% include ruby/ruby-class.rb %}
```

#### 2.4. Operators
```ruby
{% include ruby/ruby-operators.rb %}
```

#### 2.5. If else statement
```ruby
{% include ruby/ruby-ifelse.rb %}
```
#### 2.6. Loops
```ruby
{% include ruby/ruby-loops.rb %}
```

#### Xây dựng module cho phép quét email từ website và lưu lại

> Module: EmailHunter
> - Cấu trúc : singleton 
