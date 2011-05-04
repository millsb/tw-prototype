require_recipe 'apt'
require_recipe 'openssl'
require_recipe 'git'
require_recipe 'sqlite'
require_recipe 'ruby::1.9.1'
require_recipe 'rubygems'

gem_package("bundler")
