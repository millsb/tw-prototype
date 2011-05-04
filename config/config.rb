require 'html5-boilerplate'
# Require any additional compass plugins here.
if defined?(Sinatra)
  project_path = Sinatra::Application.root
  environment = :development
else
  css_dir = File.join 'public', 'css'
  relative_assets = true
  environment = :production
end

# Set this to the root of your project when deployed:
http_path = "/"
http_images_path = "/images"
http_stylesheets_path = "/css"
css_dir = "public/css"
sass_dir = File.join 'views', "sass"
images_dir = File.join 'public', 'images'
javascripts_dir = File.join 'public', 'js'

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass
