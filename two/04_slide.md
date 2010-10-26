!SLIDE smaller
# example_01.rb #

    @@@ ruby
    
    class A
      def initialize
        @foo = "bar"
      end
    
      def foo=(value)
        @foo=value
      end
    
      def foo
        @foo # last line in a method return this value
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
      b.foo = "buzz"
      puts a.foo
      puts b.foo
    end
    
