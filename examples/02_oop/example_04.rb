
class A

  attr_accessor :foo

  def initialize
    @foo = "bar"
  end
end

class B < A
  def initialize
    @foo = "buzz"
  end
end

if __FILE__ == $0
  a = A.new
  b = B.new
  puts a.foo
  puts b.foo
  b.foo="bar"
  puts b.foo
end

