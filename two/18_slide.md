!SLIDE small
# main3.rb #

    @@@ ruby
    require 'jajah_api'
    require 'string'
    
    if __FILE__ == $0
      include JajahApi
      user = User.new({:name    => "Juan",
                       :surname => "de Bravo",
                       :phone   => "0542279538"
                      })
    
      puts user
    
      begin
        puts user.downcase
      rescue => E
        puts "Exception catched"
      end
    end
