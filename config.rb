set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

activate :deploy do |deploy|
  deploy.method = :git
  # Optional Settings
  deploy.remote = "ctulip.me" # remote name or git url, default: origin
  # deploy.branch = "custom-branch" # default: gh-pages
end
