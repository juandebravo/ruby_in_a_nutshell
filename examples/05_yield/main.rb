if __FILE__ == $0

  # Basic method that prints the array received
  # and execute the defined block
  def operation(var, &block)
    p var.join(",")
    unless block.nil?
      yield var
    end
  end


  # Call the method with no block
  operation([1, 2, 3, 4, 5])

  # Call the method with a specific block
  # sum method
  x = operation([10, 2]) do |x| 
    x.inject(0) do
      |n, value| n + value
    end
  end
  puts x

  # define a sum method
  sum = Proc.new do |x| 
    x.inject(0) do
      |n, value| n + value
    end
  end

  # define a prod method
  prod = Proc.new do |x| 
    x.inject(1) do
      |n, value| n * value
    end
  end

  # sum an array of numbers
  arr = [4,5,6,7,8,9]

  ["sum", "prod"].each do |method|
    proc = eval(method)
    p "The #{method} of [#{arr.join(', ')}] is => #{proc.call(arr)}"
  end

  2.times do
    puts ""
  end

  [sum, prod].each do |method|
    p "The ... of [#{arr.join(', ')}] is => #{method.call(arr)}"
  end

end
