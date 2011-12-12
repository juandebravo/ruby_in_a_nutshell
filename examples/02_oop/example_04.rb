
class A

  attr_accessor :foo

  # Class variable
  @@greeting = "Hello world"

  # constant
  DATE = Time.now

  def initialize
    @foo = "bar"
  end

  # Class method
  def self.hello
    @@greeting
  end

end

if __FILE__ == $0

  a = A.new
  puts a.foo        # instance method
  puts A.hello      # class method

end

