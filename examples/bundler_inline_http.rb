require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'httparty'
end

puts HTTParty.get('https://www.boredapi.com/api/activity')
