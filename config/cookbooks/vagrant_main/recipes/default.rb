require_recipe 'apt'
require_recipe 'openssl'
require_recipe 'git'
require_recipe 'ruby::1.9.1'
require_recipe 'rubygems'

gem_package("bundler")

#bash "bundle_install" do
#	user "vagrant"
#	code "bundle install"
#end                   

#bash "start_thin" do
#	cwd "/vagrant"
#	code "thin start -p80"
#end