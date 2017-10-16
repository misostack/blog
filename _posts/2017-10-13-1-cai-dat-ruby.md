---
layout: project
title: 1.Cai dat ruby
order: 1
description: "Hướng dẫn cài đặt ruby trên window và linux" 
tags: 
    - "ruby"
---

> - **Ruby Is English for Computers**
> - **Everything Is an Object**

# Hướng dẫn cài đặt ruby trên window

# Hướng dẫn cài đặt ruby trên ubuntu (16.04)

> Cài đặt các gói ruby dependencies

```
sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
```

> Cài đặt rbenv

- [rbenv](https://github.com/rbenv/rbenv)
- [gem packages](https://rubygems.org/)

```
cd ~
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
~/.rbenv/bin/rbenv init
```

> Run ~/.rbenv/bin/rbenv init and follow the instructions to set up rbenv integration with your shell. This is the step that will make running ruby "see" the Ruby version that you choose with rbenv

```
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
```

**Then restart bash**

**Checking rbenv**

```
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
```

**Install plugins**

https://github.com/rbenv/ruby-build#readme

```
# As an rbenv plugin
$ mkdir -p "$(rbenv root)"/plugins
$ git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# As a standalone program
$ git clone https://github.com/rbenv/ruby-build.git
$ PREFIX=/usr/local ./ruby-build/install.sh
```

**Upgrade plugins**

```
# As an rbenv plugin
$ cd "$(rbenv root)"/plugins/ruby-build && git pull
```

**Usage**

Current stable version at this time : 2.4.2

```
# As an rbenv plugin
$ rbenv install --list                 # lists all available versions of Ruby
$ rbenv install --verbose 2.4.2        # installs Ruby 2.4.2 to ~/.rbenv/versions
$ rbenv global 2.4.2                   # set gem version for global to 2.4.2
```

**Permissions problem when install by other user(not root)**

- [https://blakewilliams.me/posts/system-wide-rbenv-install](https://blakewilliams.me/posts/system-wide-rbenv-install)
- [https://stackoverflow.com/questions/31588604/rbenv-installation-permission-denied](https://stackoverflow.com/questions/31588604/rbenv-installation-permission-denied)

Ví dụ user install đang là ubuntu

```
cd ~/.rbenv
sudo chown -Rf ubuntu:ubuntu versions
sudo chown -Rf ubuntu:ubuntu shims
rbenv install --verbose 2.4.2
```

**Kiểm tra version**

```
gem -v
```

# Cài đặt gem bundler để quản lí packages

```
gem install bundler
rbenv rehash
```