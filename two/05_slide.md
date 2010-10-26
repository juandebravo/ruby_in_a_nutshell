!SLIDE smaller
# example_02.rb #

    @@@ ruby
    
    class A
      attr_reader :foo
    
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
    
      begin
        b.foo="bar"
        puts b.foo
      rescue Exception => e
        puts "Unable to access b.foo: #{e}"
      end
    end
    
