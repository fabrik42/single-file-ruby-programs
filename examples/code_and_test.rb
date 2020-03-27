def greet(name)
  "Hello #{name}!"
end

# this will only run if the script was the main, not load'd or require'd
if __FILE__ == $0
  require "test/unit/assertions"
  include Test::Unit::Assertions

  assert_equal 'Hello Ruby', greet('Ruby'), "greet function should return 'Hello Ruby!'"
end
