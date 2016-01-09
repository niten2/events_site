require 'slim'
require 'lib/extensions/custom_urls.rb'
activate :custom_urls

# gems
activate :livereload
activate :directory_indexes
activate :automatic_image_sizes
activate :syntax
activate :relative_assets
activate :bower

set :relative_links, true
set :site_url, ""
set :markdown

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'

set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :data_dir, 'source/data'
set :helpers_dir, 'lib/helpers'

set :partials_dir, '_partials'
set :layouts_dir,  '_layouts'

after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

ignore '.idea/*'

configure :build do
  set :site_url, "/test111"
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  # activate :relative_assets
  # activate :cache_buster
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
end

# github userpages deploy
#activate :deploy do |deploy|
  #deploy.method = :git
  #deploy.build_before = true
  #deploy.branch   = "master"
  #deploy.remote   = "git@github.com:username/username.github.io.git"
#end
