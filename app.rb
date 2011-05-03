# This makes sure the bundled gems are in our $LOAD_PATH
require File.expand_path(File.join(File.dirname(__FILE__), 'vendor', 'gems', 'environment'))

# This actually requires the bundled gems
Bundler.require_env

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config.rb'))
  set :haml, :format => :html5
  set :sass, Compass.sass_engine_options
end

get '/css/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass(:"sass/#{params[:name]}", Compass.sass_engine_options)
end

get '/' do
  haml :index
end
