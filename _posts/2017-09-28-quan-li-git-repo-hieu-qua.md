---
layout: post
title: Quản lí git repo hiệu quả
description: Phân chia nhóm project trên bitbucket hợp lí theo chủ đề
categories: 
    - "productiverules"
---

# Tổ chức theo công việc

> Bước 1 : Phân loại theo team : business, production, outsourcing, personal
> 
> Bước 2 : Phân loại theo dự án trong từng team
> 
> Bước 3 : Phân loại repository:
> 
> - Đặt tên : per_blogs_sonnm.com ==> Team: personal, Project: blogs, Repo : sonnm

## Team

- sonnm-business(biz) : các dự án hỗ trợ việc kinh doanh bao gồm bán hàng, marketing

- sonnm-production(pro) : các dự án là sản phẩm thương mại bao gồm : wordpress themes, software, web application, mobile app

- sonnm-outsourcing(osc) : các dự án gia công cho khách hàng như làm web, app, ứng dụng, seo, ...

- sonnm-personal(per) : các dự án như blog cá nhân, blog kĩ thuật, công nghệ web theo stack, training courses, app quản lí

### business

- sales

- marketing

- management

### production

- softwares

- web application

- mobile app

- wordpress themes

### outsourcing

- webs

- apps

- marketing

### personal

- web types : blogs

- stacks : lamp-stack, mean-stack, ror-stack

- devops : aws, ubuntu, centos

- database : db-mysql, db-postgresql, db-mongo, db-sqlite

- javascripts : ReactJS, AngularJS

- mobile hybrid app :  Ionic2, ReactNative

- languages : php, ruby, javascript

### Defines

> LAMP Stack = Linux + Apache + Mysql + PHP
> 
> MEAN Stack = MongoDB + ExpressJS + AngularJS + Node
> 
> RoR Stack = (Linux|Window) + Nginx + (Puma | Thin | Unicorn) + Rails + (Mysql | PostgreSQL | sqlight)
