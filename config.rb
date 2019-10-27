activate :directory_indexes

set :port, '7889'

page "/*"

# Use relative URLs
activate :relative_assets

set :css_dir, 'assets/styles'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

#helpers do
#  def markdown(text)
#    Tilt::KramdownTemplate.new { text }.render
#  end
#end

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html

  # Enable cache buster
  #activate :asset_hash, :ignore => [/^.*fonts/]
end
