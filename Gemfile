# If you have OpenSSL installed, we recommend updating
# the following line to use "https"
source 'http://rubygems.org'

gem "middleman", "3.3.0"

# For syntax highlighting
gem "middleman-syntax", "2.0.0"

# Plugin for middleman to generate Github pages
gem 'middleman-gh-pages', "0.0.3"

group :development do
  gem 'capistrano', '3.2.1', require: false
  gem 'capistrano-bundler', '1.1.2'
end

# Live-reloading plugin
gem "middleman-livereload", "3.3.0"

gem 'redcarpet', '3.1.1'

# For faster file watcher updates on Windows:
gem "wdm", "0.1.0", :platforms => [:mswin, :mingw]

# Cross-templating language block fix for Ruby 1.8
platforms :mri_18 do
  gem "ruby18_source_location", "0.2"
end

gem "rake", "10.3.0"

gem 'therubyracer', "0.12.1", :platforms => :ruby