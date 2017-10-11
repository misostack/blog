---
layout: post
title: 1.Common git commands
order: 1
description: "Các câu lệnh hay sử dụng trong git" 
categories: 
    - "git"
---

> ### Git config

**Kiểm tra thông tin**

```
git config
git config --global user.name
git config --global user.email
git config user.name
git config user.email
```

**Thay đổi thông tin**

```
git config --global user.name "Nguyen Son"
git config --global user.email "misostack.com@gmail.com"
git config user.name "Nguyen Son"
git config user.email "misostack.com@gmail.com"
```

> ### Manipulation

**New project**

```
git init
git remote add origin [repo]
git add.
git commit -am "Init project"
git push origin master
```

**New branch**

```
git checkout -b new-branch existing-branch
```

**Add new file**

```
git add filepath # only this file
git add . # all files
git commit -am "Commit all changes"
git push origin branch-name
```

**Fetch,Pull,Merge,Push**

```
git branch # list all your local branch and show your current branch
git fetch # get all updates from remote
git pull origin branch-name # pull all updates from remote to your current branch in local
git merge other-branch # merge your current branch with other branch
git push origin branch-name # push your local branch to remote
```

**Reset commit**
```
git log
git reset commit-id
git commit -am "Reset branch to commit #{commit-id}"
git push -f
```

**Stash**

```
git stash
git stash pop
git stash clean
```

**Tags**

```
git tag tag-name
git push tag tag-name
```