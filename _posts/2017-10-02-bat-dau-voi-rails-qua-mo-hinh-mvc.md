---
layout: post
title: Bắt đầu với Rails qua mô hình MVC
description: Bảng tham khảo về ruby
permalink: "/ruby-and-rails/bat-dau-voi-rails-qua-mo-hinh-mvc"
categories: 
    - "backend"
    - "ruby-and-rails"
---

# Lời mở đầu

[Tham khảo](https://betterexplained.com/articles/intermediate-rails-understanding-models-views-and-controllers/)

# Một số khái niệm cơ bản

> **Rails Tools**
> 
> - Bundle
> - Generator
> - Rake
> 
> **MVC**
> 
> - Controller
> - Routes
> - Views
> - Model
> - Rake
> - Migration
> - Helper
> - Assets
> - Test

# Rails tools

## Generator

> Rails hỗ trợ công cụ cho phép generate tự động cấu trúc file theo mô hình mvc để tạo 1 tính năng mới
> Để biết chi tiết gõ lệnh sau
> 
> rails g -h

[Chi tiết](https://gist.github.com/misostack/6c49305ae48adbe4ebf817bc574e9f93)

## Rake

> Rake là gì?
> 
> http://docs.seattlerb.org/rake/
> 
> Rake cho phép tạo các task riêng để chạy trên commandline
>
> Ví dụ bên dưới là dùng rake để kiểm tra các routes hiện tại trong app
> 

```
bundle exec rake routes
```

**Kết qua sau khi chạy rake**

```
                 root GET    /                                     todo_list_actions#index
    todo_list_actions GET    /todo_list_actions(.:format)          todo_list_actions#index
                      POST   /todo_list_actions(.:format)          todo_list_actions#create
 new_todo_list_action GET    /todo_list_actions/new(.:format)      todo_list_actions#new
edit_todo_list_action GET    /todo_list_actions/:id/edit(.:format) todo_list_actions#edit
     todo_list_action GET    /todo_list_actions/:id(.:format)      todo_list_actions#show
                      PATCH  /todo_list_actions/:id(.:format)      todo_list_actions#update
                      PUT    /todo_list_actions/:id(.:format)      todo_list_actions#update
                      DELETE /todo_list_actions/:id(.:format)      todo_list_actions#destroy

```

# MVC

- [Phân tích MVC](http://iviettech.vn/blog/4632-cai-dat-mo-hinh-mvcmodel-view-controller-trong-java.html)

> **Phần mềm hỗ trợ phân tích thiết kế phần mềm**:
> 
> - http://iviettech.vn/blog/1636-tools-cac-cong-cu-su-dung-de-xay-dung-cac-ban-ve-uml.html
> - http://staruml.io/

> **Model – View – Controller**

**Ví dụ ta có bài toán sau**

>**Mô tả chức năng Login như sau:**
>
> - Màn hình Login của ATM sẽ hiển thị thông tin yêu cầu số PIN(AccountNo) và Password.
> - Hệ thống sẽ nhận thông tin từ người dùng và chuyển cho lớp Account để kiểm tra.
> - Nếu thông tin số PIN và Password đúng thì trả về Login thành công, Nếu sai thì trả về Login thất bại.

**Bản vẽ thiết kế Sequence Diagram cho chức năng này như sau:**

![Overview](/assets/img/posts/he-thong-thong-tin/sequence-diagram.png)

>**Trong đó:**
>
>- Lớp System đại diện cho các giao diện màn hình.
>- Lớp Account mô tả tài khoản trong hệ thống.
>- Để hiểu rõ hơn về bản vẽ này bạn đọc thêm bài Bản vẽ Class Diagram

>Theo mô hình trên thì phần Code business và tương tác giữa 2 lớp bạn sẽ viết trong lớp giao diện hoặc lớp Account nên hầu hết các ngôn ngữ cho bạn viết code xen lẫn với HTML. Chính điều này gây khó hiểu cho người mới học.

>Bây giờ chúng ta sẽ áp dụng thiết kế MVC để thiết kế cho chức năng này. Bằng cách tách lớp Giao diện ra thành View và Controller ta sẽ có bản vẽ Sequence Diagram như sau:

>**Bản vẽ thiết kế Sequence Diagram sau khi áp dụng MVC:**

>- Lớp login: thể hiện giao diện có thể cài đặt bằng file login.html.erp
>- loginResult: login_result.html.erp
>- loginController: là lớp điều khiển cho ứng dụng này. Sử dụng Controller
>- Lớp Account: đây chính là model

![Overview](/assets/img/posts/he-thong-thong-tin/sequence-diagram-mvc.png)

**Cập nhật các phương thức và lớp mới vào sơ đồ lớp chúng ta sẽ có:**

![Overview](/assets/img/posts/he-thong-thong-tin/class-diagram.png)

**Đối với rails ta có mô hình sau**

![Overview](/assets/img/posts/he-thong-thong-tin/mvc-rails.png)

> Trong thực tế, 1 ứng dụng web sẽ bao gồm nhiều chức năng
> phức tạp hơn nên cách phân chia controller và model sẽ tương đối khác. Ví dụ, trong thực tế chức năng login là 1 chức năng
> thuộc về 1 nhóm là các chức năng của user. Ví dụ như:
> login,logout, update profile, reset password, update password.
> 
> Do đó việc đặt tên controller cũng tương đối khác
> Đặc biệt trong rails controller name thường theo quy tắc Capitalize và thêm suffix "**s**" ở cuối. Ví dụ với nhóm chức năng của user sẽ là 1 controler để xử lý các hành vi của người sử dụng. UsersController


## Routes

[Overview](http://guides.rubyonrails.org/routing.html)

>**Questions**
>
>- How to define route?
>- Root URL

```
config/routes.rb

root to: "controller_name#action"
```

**Reload route**

```
rails console
reload!
```

## Controller

[Overview](http://guides.rubyonrails.org/action_controller_overview.html)

> - Naming rules
> - Method & Actions
> - Parameters
> - Session
> - Cookies
> - Rendering XML and JSON data
> - Filters
> - Request Forgery Protection
> - The Request and Response Objects
> - HTTP Authentications
> - Streaming and File Downloads
> - Log Filtering
> - Rescue
> - Force HTTPS protocol

**Example for user's actions**

```
login,logout, update profile, reset password, update password
```

*app/controllers/users_controller.rb*

```
class UsersController < ApplicationController
  def login
  end
    
  def logout
  end

  def update_profile
  end

  def reset_password
  end

  def update_password
  end
end
```

**Rendering**

http://apionrails.icalialabs.com/book/chapter_one

http://guides.rubyonrails.org/api_app.html

https://medium.com/superhighfives/a-top-shelf-web-stack-rails-5-api-activeadmin-create-react-app-de5481b7ec0b

[Overview](http://guides.rubyonrails.org/layouts_and_rendering.html)

**views/users/login.html.erb**

```
```

**Layout**

```
class UsersController < ApplicationController
  **layout 'bootstrap'**
  def login
  end

  def do_login
  end

  def logout
  end

  def update_profile
  end

  def reset_password
  end

  def update_password
  end
end
```

**Integrated bootstrap**

[For bootstrap 4](https://github.com/twbs/bootstrap-rubygem)

[For bootstrap 3](https://github.com/twbs/bootstrap-sass)

> Step 1 : Update gem

**Gemfile**

```
# Application packages need

# 1.Bootstrap 4
gem 'bootstrap', '4.0.0.beta'

# 2.jquery
gem 'jquery-rails', '4.3.1'

# 3.popper
gem 'popper_js', '1.11.1'
```

```
bundler install
```

> Step 2 : restart your server

```
ps aux | grep puma
sudo kill -9 [processid]
rails server -d
```

> Step 3 : Change file name from application.css to application.scss and update content

```
// "bootstrap-sprockets" must be imported before "bootstrap" and "bootstrap/variables"
@import "bootstrap";
```

> Step 4 : Import javascripts

Add these lines to application.js

```
//= require jquery
//= require popper
//= require bootstrap

$(document).ready(function () {
  console.log('jquery ready');
  document.title = "Welcome to bootstrap layout";
});
```

> Step 5 : Add testing bootstrap layout

**app/views/layout/bootstrap.html.erb**

```!html
<!DOCTYPE html>
<html>
  <head>
    <title>Title Bootstrap Layout</title>
    <%= csrf_meta_tags %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Disabled</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>  
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-3">Hello, world!</h1>
        <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>

      <%= yield %>
      

      <footer>
        <p>&copy; Company 2017</p>
      </footer>
    </div> <!-- /container -->    
  </body>
</html>
```