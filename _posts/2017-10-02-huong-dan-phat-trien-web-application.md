---
layout: post
title: Hướng dẫn phát triển ứng dụng web
description: Tăng tốc phát triển ứng dụng web
permalink: "/productiverules/tang-toc-phat-trien-ung-dung-web"
categories:     
    - "productiverules"
---

# Hướng dẫn cách tiếp cận và phát triển tính năng

### Bước 1 : 

```
Xác định các yêu cầu của tính năng và phân tách các hành vi
```

```
Ví dụ : tính năng quản lí công việc phải làm (todolist) cần:

- Cho phép hiển thị toàn bộ danh sách todolist
- Thêm, xóa, cập nhật todolist
- Tìm kiếm công việc(action/issue) theo bộ lọc : mã số, tên công việc, tình trạng, user

**Định nghĩa**

```
User : người dùng
Admin : người quản trị hệ thống
```

**Thông tin chính của action**

- mã số

- tên công việc

- user : 1 action thuộc về một user

- tình trạng : chưa làm | đang làm | đã hoàn thành

- Các thông tin bổ sung khác ví dụ như : 
  - Mô tả chi tiết
  - Ghi chú
  - Thời gian dự kiến hoàn thành
  - Thời gian thực hiện

**Nghiệp vụ**

- Quản lí action : CRUD( tìm kiếm, thêm, xóa, cập nhật)

**Ràng buộc dữ liệu**

- Mỗi action có một mã số duy nhất

- Mỗi action thuộc về một user duy nhất

**Bảo mật**

- Mỗi user chỉ được quản lí : thêm, xóa, cập nhật các action của mình

- User chỉ tạo được action khi đã đăng nhập

**Tính tiện dụng**

- User được phép thay đổi mật khẩu

- User được phép đăng ký tài khoản

- User được phép reset mật khẩu

- User được phép thay đổi thông tin cá nhân

**Các tính năng khác cho Admin - người quản trị hệ thống**

- Được phép quản lí các user của ứng dụng: tìm kiếm, thêm, xóa, cập nhật
- Được phép thay đổi mật khẩu của mình

**Tính năng nâng cao khác cho hệ thống**

- Mỗi user khi đăng ký cần phải kích hoạt tài khoản qua email
- Mỗi user khi reset mật khẩu cần phải reset qua email(tính năng forget password)
- Mỗi user khi thay đổi mật khẩu cần phải xác nhận mật khẩu cũ
- Mỗi user sau khi đăng ký thành công được nhận email chào mừng đã tham gia hệ thống
- Admin hệ thống được phép gửi link reset mật khẩu đến user
- Admin hệ thống được phép kích hoạt tài khoản cho user
- Admin hệ thống được phép tìm kiếm user bằng email, họ tên



```

URL           | Action         | Purpose
------------  | ------------   | ------------
/issues | index page | to list all issues


### Bước 2 : 

```
Vẽ mô hình MVC dựa trên yêu cầu chính tại bước 1
```

![MVC Example](/assets/img/posts/tang-toc-phat-trien-ung-dung-web/mvc-rails.png)

### Bước 3: Xác định các tính năng chính và bổ sung của hệ thống

```
Todolist
  - Quản lí action : CRUD( tìm kiếm, thêm, xóa, cập nhật)
  - Secured:
    - Cần đăng nhập mới sử dụng được tính năng
    - User chỉ được phép quản lí action của mình
User
  - Đăng nhập
  - Đăng ký
  - Khôi phục mật khẩu
  - Thay đổi mật khẩu
Admin
  - Đăng nhập
  - Quản lí user : CRUD( tìm kiếm, thêm, xóa, cập nhật)
  - Thay đổi mật khẩu
```

### Bước 4: Tạo todolist để thực hiện các tính năng của dự án

**Luật 20-80**

```
Bắt đầu dự án bằng tính năng chiếm 20% thời gian của dự án đem lại 80% kết quả
```

**Phân tách, phân loại các tính năng kế tiếp liên quan tới tính năng chính**

Tính năng | Mức độ ưu tiên | Thứ tự ưu tiên
------------ | --------- | ---------
[Todolist]Quản lí action | A+ | 1
[User]Đăng nhập | A | 2
[Todolist][Secured] | A | 3
[User]Đăng ký | A | 4
[User]Thay đổi mật khẩu | A | 5
[Admin]Đăng nhập | A- | 6
[Admin]Thay đổi mật khẩu | A- | 7
[Admin]Quản lí user | A- | 8
[User]Khôi phục mật khẩu | B+ | 9
... | ... | 10+

**Objects**

```
- action : hoạt động của user để hoàn thành mục tiêu
- User : User bình thường
- Admin : User với quyền hạn là admin
```

### Bước 5: Xây dựng tính năng chính

```
Quản lí action : CRUD( tìm kiếm, thêm, xóa, cập nhật)
```

**Phân tích dữ liệu chi tiết**

#### action

Trường dữ liệu | Kiểu dữ liệu | Giá trị mẫu | Mô tả
------------ | ------- | --------- | ---------
tid | number | 1 | [1...n] - số tăng tự động, sử dụng làm mã số để tìm kiếm
name | string | Kiểm tra email | tên của hành động
uid | number | 2 | [1...n] - mã người dùng
t_status | enum | done | [new, in-progress, done], new: chưa thực hiện, in-progress: đang thực hiện,done: đã xong
... | ... | ...

**Phân tích hành vi**

URL | Hành vi | Mục tiêu
------------ | --------- | ---------
/actions | index | trang hiển thị tất cả các action cần làm của user
/actions/1 | show | hiển thị chi tiết action với mã số là 1
/actions/new | new | trang tạo action mới
/actions/1/edit | edit | trang để cập nhật action

**Áp dụng MVC xây dựng routes, controller, actions tương ứng với hành vi trên**

