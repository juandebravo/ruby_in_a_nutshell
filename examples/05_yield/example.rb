
class A

  attr_accessor :name
  attr_accessor :surname
  attr_accessor :phone
  
  def initialize(params = {}, &block)

    unless params.empty?
      @name    = params[:name]    if params.has_key?(:name)
      @surname = params[:surname] if params.has_key?(:surname)
      @phone   = params[:phone]   if params.has_key?(:phone)
    end

    block_given? and yield self

  end

  def to_s
    "A => name : #{name}, surname: #{surname}, phone: #{phone}"
  end
end

if __FILE__ == $0
  a = A.new({ :name => "foo", 
              :surname => "bar", 
              :phone => 123})
  
  puts a

  a2 = A.new do |a|
    a.name    = "foo2"
    a.surname = "bar3"
    a.phone   = 1234
  end

  puts a2

end