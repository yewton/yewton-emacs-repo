# -*- mode: ruby; coding: utf-8; -*-
source 'https://supermarket.chef.io'

cookbook 'apt', '~> 2.6.1'
cookbook 'debian', '~> 1.7.2'
cookbook 'the_silver_searcher', '~> 1.3.9'

Dir.glob('./site-cookbooks/*') do |path|
  cookbook File.basename(path), :path => path
end
