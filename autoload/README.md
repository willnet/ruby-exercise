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
