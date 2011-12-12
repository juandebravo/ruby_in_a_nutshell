
class A

  attr_accessor :foo

  # Constructor
  def initialize
    @foo = "bar"
  end

  # def foo=(value)
  #   @foo=value
  # end
  # 
  # def foo
  #   @foo # last line in a method return this value
  # end
  
end

class B < A

  # Constructor
  def initialize
    @foo = "buzz"
  end

end

if __FILE__ == $0

  a = A.new
  b = B.new
  puts a.foo

  puts b.foo
  b.foo = "another value"
  puts b.foo

end

