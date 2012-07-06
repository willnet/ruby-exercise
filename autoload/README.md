# test_autoload

autoload でハマる例

## test_autoload.rb

~~~
#!/usr/bin/env ruby

class Twitter; end
class Post; end

autoload :Twitter, File.expand_path('../post/twitter', __FILE__)

Post::Twitter.hello
~~~

## post/twitter.rb

~~~
class Post::Twitter
  def self.hello
    puts 'hello'
  end
end
~~~

## 実行結果


~~~
./test_autoload.rb
./test_autoload.rb:8: warning: toplevel constant Twitter referenced by Post::Twitter
./test_autoload.rb:8:in `<main>': undefined method `hello' for Twitter:Class (NoMethodError)
~~~

既に定義されているクラスと同名のクラスがネストされている場合、autoloadすることはできない

## 解決方法

* autoload せずに require する
* もしくは名前替える

rails の場合は config/initializer/before_autoload.rb のようなファイルを作って

~~~
require 'post/twitter'
~~~

のようにするとうまくいく
