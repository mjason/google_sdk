# GlassSdk
===

> 一个google api的sdk

## install

在你的gemfile里面加入

```ruby
gem 'google_sdk'
```

`rails g google_sdk:install`

打开`config/initializers/glass_sdk.rb`, 修改你的client_id和client_secret, 和修改你需要的权限.

## 使用

base = GlassSdk::OAuth.new("你的回调地址")
base.login_url # 获取用户授权地址
resp = base.user_token "xxx" #传入google 传输回来的code, 获取用户的信息
resp.body # 获取用户信息

定义自己的服务
```ruby
class Timeline
  include API
  base_uri "/mirror/v1/timeline"
end
```

```ruby
Timeline.get(Authorization: "Bearer ya29.AHES6xxxJbinPzPG-nr3EZMan0SNFe7fbhImvvxm5Ar2tBsnAb8NMJaU")
```

This project rocks and uses MIT-LICENSE.