require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'minitest', require: false
end

require 'minitest/autorun'

class MyTest < Minitest::Test
  def test_should_be_true
    assert_equal true, true
  end
end
