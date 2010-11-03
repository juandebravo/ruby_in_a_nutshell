if __FILE__ == $0

 # Basic method that prints the array received
 # and execute the defined block
 def operation( var, &block)
   p var.join(",")
   unless block.nil?
     yield var
   end
 end


 # Call the method with no block
 operation([1, 2, 3, 4, 5])

 # Call the method with a specific block
 # sum method
 p operation([10, 2]){ |x| x.inject(0) {
        |n, value| n + value }
 }

 # define a sum method
 sum = Proc.new { |x| x.inject(0) { 
            |n, value| n + value } 
       }

 # define a prod method
 prod = Proc.new { |x| x.inject(1) { 
            |n, value| n * value } 
       }

 # sum an array of numbers
 arr = [4,5,6,7,8,9]

["sum", "prod"].each{|method|
   proc = eval(method)
   p "The #{method} of [#{arr.join(', ')}] is => #{proc.call(arr)}"
}

2.times{
  puts ""
}

[sum, prod].each{|method|
   p "The ... of [#{arr.join(', ')}] is => #{method.call(arr)}"
}
end
