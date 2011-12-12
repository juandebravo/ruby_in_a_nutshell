

if __FILE__ == $0

  def yotam
    "hello, I'm yotam"
  end

  foo = "bar"
  
  bar = foo
  foo = bar

  puts foo # prints foo value
  puts "#{foo}" # prints foo value

  puts eval "5*5"
  puts 5*5

  puts eval(foo) # prints foo value value
  puts eval("yotam") # prints foo value value
  puts eval(bar)
  
end
