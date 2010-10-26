require 'jajah_api'

if __FILE__ == $0
  include JajahApi
  user = User.new({:name    => "Juan",
                   :surname => "de Bravo",
                   :phone   => "0542279538"
                  })

  puts user
end
