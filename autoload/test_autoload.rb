#!/usr/bin/env ruby

class Twitter; end
class Post; end

autoload :Twitter, File.expand_path('../post/twitter', __FILE__)

Post::Twitter.hello
