
# Loops
if __FILE__ == $0
  puts "Integer...."
  3.times{|i|
    puts "loop #{i} => #{rand(100)}"
  }

  puts "Range...."
  (0..2).each{|x|
    puts "loop #{x} => -#{rand(100)}"
  }
end
