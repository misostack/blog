---
layout: ror2017
title: 4.Design application's structure
order: 4
description: "Hướng dẫn từ cơ bản đến cao về ruby & rails" 
permalink: "/ror2017/design-application-structure"
categories: 
    - "backend"
    - "ruby-and-rails"
    - "ror2017"
---

# Các phương pháp tiếp cận

> - Functional Programming
> - Objective Programming
> - Modular Programming

**Bài toán**

> Xây dựng ứng dụng todolist
> Ứng dụng todolist cho phép người dùng quản lí được các hành động cần phải thực hiện hôm nay
> và sắp xếp chúng theo độ ưu tiên nhằm đạt được hiệu quả cao nhất trong công việc

# Tiếp cận bài toán và xây dựng ứng dụng

- [Tiêu chí đánh giá chất lượng phần mềm](https://misostack.wordpress.com/2017/10/09/tieu-chi-danh-gia-phan-mem/)

## Phương pháp functional programming

> **Bước 1** : Phân tách các chức năng từ chức năng chính
> 
> **Bước 2** : Bắt đầu bằng việc xây dựng tính năng chính
> 
> **Bước 3** : Phát triển tiếp các tính năng liên quan nhất với tính năng chính
> 
> **Bước 4** : Cải thiện ứng dụng theo các tiêu chí đánh giá chất lượng phần mềm
> 
> **Bước 5** : Kiểm thử phần mềm
> 
> **Bước 6** : Triển khai phần mềm

### Áp dụng phương pháp functional programming vào xây dựng ứng dụng todolist

> **Chức năng chính:**
> 
> *Danh sách các hành động cần thực hiện hôm nay được sắp xếp theo độ ưu tiên*
> 
> **Phân tách**
> 
> *Main features:*
> 
> Quản lí todolist :| mỗi người dùng chỉ được quản lí todolist của mình(CRUD)
> Auth hoặc UserAuth :| Đăng nhập, đăng xuất, đăng ký, cập nhật mật khẩu, khôi phục mật khẩu
> Email :| gửi email link khôi phục mật khẩu
> &nbsp;
> 
> *System*
> 
> - Quản lí user : người quản trị hệ thống được phép quản lí người sử dụng ứng dụng(CRUD)
> - Đăng nhập, đăng xuất, thay đổi mật khẩu
> 
> *API*
> 
> - Cung cấp REST API cho các tác vụ trên
> 
> **Phát triển thêm các tính năng khác đáp ứng tiêu chuẩn phần mềm**
> 
> - Tính đúng : kiểm tra tính đúng của ứng dụng
> - Tính khoa học : cấu trúc, nội dung, hình thức thao tác (UI & UX)
> - Tính tin cậy
> - Tính kiểm thử được : tích hợp testing
> - Tính hữu hiệu
> - Tính sáng tạo
> - Tính an toàn : bảo mật web : cross site attack, sql injection, brute force attack
> - Tính toàn vẹn
> - Tính đối xứng và đầy đủ chức năng: Create-Delete, Sort:ASC-DESC
> - Tính tiêu chuẩn và tính chuẩn
> - Tính độc lập
> - Tính dễ phát triển, hoàn thiện
> - ...

#### Define routes & actions by group (MVC)

> **Actions**
> 
> todolist_actions(todos):| index, new, edit, delete ( can use rails -g scaffold )
> user_auth(user):| login,logout,forget_pw,update_pw ( rails -g controller)
> email:| send mail ( internal class, rails email )
> manage_users(admin/users):| index, new, edit, delete ( can use rails -g scaffold)
> system_auth(admin):| login,logout, update_pw
> api :| cung cấp api cho các tác vụ trên

Existing app : https://github.com/ruby-grape/grape#rails

New API app : http://guides.rubyonrails.org/api_app.html


**Rails:**

> Generate vs Destroy
> MVC
> Layout
> Links

## Phương pháp objective programming

> **Bước 1** : Xác định các đối tượng trong ứng dụng
> 
> **Bước 2** : Bản thân phần mềm là 1 đối tượng
> 
> **Bước 3** : Xây dựng thuộc tính, hành vi của các đối tượng và cách chúng giao tiếp với nhau
> 
> **Bước 4** : Cải thiện ứng dụng theo các tiêu chí đánh giá chất lượng phần mềm
> 
> **Bước 5** : Kiểm thử phần mềm
> 
> **Bước 6** : Triển khai phần mềm