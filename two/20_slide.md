!SLIDE smaller
# main.rb #

    @@@ ruby
    if __FILE__ == $0
    
     def operation( var, &block)
       p var.join(",")
       unless block.nil?
         p yield var
         #p yield var
       end
     end
    
     operation([1, 2, 3, 4, 5])
    
     operation([4, 5]){ |x| x.inject(1) { |n, value| n * value } }
    
     sum = Proc.new{|x| x.inject(0) { |n, value| n + value } }
    
     prod = Proc.new{|x| x.inject(1) { |n, value| n * value } }
    
     p sum.call([4,5,6,7,8,9])
    
     p prod.call([4,5,6,7,8,9])
    end
