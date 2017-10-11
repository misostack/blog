---
layout: post
title: beginning of rails 5
description: Bảng tham khảo về ruby
permalink: "/ruby-and-rails/beginning-of-rails-5"
categories: 
    - "all"
---

# I.Hướng dẫn tiếp cận rails 5 theo từng bước

**Các nguyên tắc cần tuân thủ**

```
- Xây dựng ứng dụng web theo kiến trúc MVC
```

# II.Starting with keywords

```
[] bundle
[] rails
[] route
[] mvc: model, view , controller
[] rails's scaffolding
[] rake
[] rubyisms
```

## 2.1.Bundle

## 2.2.Route

## 2.3.MVC

## 2.4.Rails command line

```
rails console
```

## 2.5.Rails's scaffolding

```
rails generate scaffold [Objectname] [attribute_1:text] [attribute_2:integer]
rake db:migrate | rails db:migrate

config/routes.rb
Rails.application.routes.draw do
  resources :objectnames  
  root 'objectnames#index'
end
```

## 2.6.Rake

## 2.7.Rubyisms

## 2.8.Resources

## 2.9.Improvement Default Scaffolding

### General

```
- Data validation : empty, length, valid_email, ...
- Authentication
- Tests & TDD
- Style or layout, eg : navigation
- Real understanding scaffold code
- Associations between different models
```

### References:

```
http://heycarsten.com/rubyisms-that-ruby-programmers-should-know
https://betterexplained.com/articles/starting-ruby-on-rails-what-i-wish-i-knew
```

## 2.10.Static pages

## 2.11.Erb

```
ERb is the primary template system for including dynamic content in web pages

<% provide(:title, "Home") %>

<title><%= yield(:title) %> | Ruby on Rails Tutorial Sample App</title>
```

## 2.12.Rails flavored ruby

```
- built-in helpers
- custom helpers
- strings and methods
- data structures
- ruby classes
```

## 2.13.Custom layout

```
- Bootstrap, custom css
- Partial
- SCSS
- Coffee Script
- Links
- External javascript libs
```

## 2.14.Model

```
- generate
- object
- sandbox,db commands
- validation
- hashed
- secured password - digest
```

## 2.15.Rails env

```
- env
- debugger
- gravatar
```

## 2.16.Forms

```
- form_for
- validation
- error message
- styling form
- test
```

## 2.17.Professional grade deployment

### Process

```
- New feature
- Create new branch from master
- Work on new branch feature
- Finished new branch feature
- Merge the finished new branch feature with develop branch for checking
- If this new feature has been validated, merge this finished feature with test branch for checking on testing
- If this new feature has been validated, merge this finished feature on staging for next deployment
- On deployment day, merge staging with master, pull lastest code on master, run deployment steps
```

### Example

```
git branch -b 10-signUp
git commit -am "Finish user sign up feature"
git push origin 10-signUp

git checkout develop
git merge 10-signUp
git push origin develop

git checkout testing
git merge 10-signUp
git push origin testing

git checkout staging
git merge 10-signUp
git push origin staging

git checkout master
git merge staging
git push origin master
```

### Branch explaination

#### Number-branchName

```
Branch sử dụng trong lúc phát triển tính năng:
- Tên branch gồm 2 phần : Number(Issue ID), branchName( Tên ngắn gọn, dùng để hiểu được yêu cầu chính của tính năng hoặc bug )
- Có thể đặt tên nhỏ hơn tùy theo loại issue. Ví dụ : 10-bug-userCanNotSignUp
- Kiểm tra tính năng trong quá trình phát triển
```

#### Develop

```
Được sử dụng trong quá trình development
- Kiểm tra tính năng đang phát triển
- Kiểm tra dữ liệu
- Tính năng được validate tại bước này do QC hoặc PM
...
```

#### Testing

```
Được sử dụng để qc,pm,client kiểm tra, và validated task
- Kiểm tra tính năng đang phát triển
- Kiểm tra dữ liệu
- Bước kiểm tra cuối cùng
...
```

#### Staging

```
Được sử dụng để chứa các task đã trải qua bước kiểm tra cuối cùng
- Kiểm tra tính năng đang phát triển
- Kiểm tra dữ liệu
- Phiên bản tương lai của production
...
```

#### Master

```
Source code của môi trường production
```

References:
- http://en.gravatar.com/

Browser DB tools:

- http://sqlitebrowser.org/
- http://razorsql.com/docs/mysql_database_browser.html

References

- [Testing regex](http://www.rubular.com/)

## 2.18.Deployment

```
- SSL in production
- Production webserver
- VPS (ubuntu, centos)
- Other enviroments: heroku, aws
```

## 2.19.Authentication

```
- Sessions
- Login Form
- Log in | Log out | Sign up
- Remember me
- Reset password
- Ternary operator
```

## 2.20.Authorization

```
- Friendly redirect. Eg : not login, after success login
```

## 2.21.List

```
- Auto generate user,email for testing : gem 'faker'
- Pagination
- Partial Refactoring
- Deleting : require permission, destroy action
- Seeds
```

### Seeds

```
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
```

## 2.22.User activation

```
- controler
- route
- model
- mailer
- email preview
- email config and testing
- email in production : gmail smtp, aws
```

## 2.23.Reset password

```
- reset diggest
- reset sent at
- rails time, timezone
```

## 2.24.Basic image upload

```
gem 'carrierwave',             '1.1.0'
gem 'mini_magick',             '4.7.0'
gem 'fog',                     '1.40.0'
```

## 2.25.AWS S3 Image Upload

```
- S3 config rules
- S3 upload form
```