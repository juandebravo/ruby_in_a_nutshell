!SLIDE smaller
# example_05.rb #

    @@@ ruby
    
    class A
      attr_accessor :foo
    
      # static attribute
      @@bar = "foo"
    
      # constant
      DATE = Time.now
    
      BEGIN{
        puts "Hello world"
      }
    
      def initialize
        @foo = "bar"
      end
    
      # Class method
      def self.bar
        @@bar
      end
    
      # Class method. 2nd way
      class << self
        def bar2
          @@bar
        end
      end
    
    end
    
    if __FILE__ == $0
      a = A.new
      puts a.foo # instance method
      puts A.bar # class method
      puts A.bar2 # class method
      a = A.new
      a = A.new
      a = A.new
    end
    
