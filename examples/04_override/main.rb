$:.unshift(File.dirname(__FILE__))

require 'jajah_api'

if __FILE__ == $0

  include JajahApi

  user = User.new({:name    => "Juan",
                   :surname => "de Bravo",
                   :phone   => "0542279538"
                  })

  puts user

  puts user.to_s.downcase
  
end
