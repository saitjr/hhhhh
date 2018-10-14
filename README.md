# hhhhh

刷一个符号到 GitHub commit 上。

![](https://wx3.sinaimg.cn/mw690/725aae1dgy1fw7ugqnkbzj217w0co0u0.jpg)

## 调用

将脚本拷贝到任意一个 Git repo 中，执行：

```shell
ruby hhhhh.rb <string split by '-'> <date>

# 如 ruby hhhhh.rb s-a-i-t-j-r 2017-12-31
# 指定字符串，每个关键字需要用 - 分隔
# 起始日期必须为周日，会从设置的日期，向后开始刷 commit
# 执行一次脚本，每天会刷 20 次 commit
```

## 自定义

目前仅支持英文字符，可以自定义任意符号。比如，想刷一个笑脸：

```ruby
# 在 Module Letter 中添加常量，0 表示不输出，1 表示输出

SMILE = [
  [0, 0, 0, 0, 0, 0],
  [1, 0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0, 0],
  [1, 0, 0, 0, 0, 1],
  [0, 1, 0, 0, 1, 0],
  [0, 0, 1, 1, 0, 0],
  [0, 0, 0, 0, 0, 0],
]
```

调用：

```shell
ruby hhhhh.rb smile-s-a-i-t-j-r 2017-12-31
```