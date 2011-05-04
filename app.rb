require 'rubygems'
require 'bundler'

# This actually requires the bundled gems
Bundler.require

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config/config.rb'))
  set :haml, :format => :html5
  set :sass, Compass.sass_engine_options
end

get '/css/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss(:"sass/#{params[:name]}", Compass.sass_engine_options)
end

get '/' do
  haml :index
end
