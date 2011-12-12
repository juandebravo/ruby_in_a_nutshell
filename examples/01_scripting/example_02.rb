
# Loops

if __FILE__ == $0
  
  puts "\nInteger...."  

  3.times do |i|
    puts "loop #{i} => #{rand(100)}"
  end

  puts "\nRange...."

  (0..200).each do |x|
    puts "loop #{x} => #{rand(100)}"
  end
end
