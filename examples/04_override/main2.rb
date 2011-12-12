$:.unshift(File.dirname(__FILE__))

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
    puts user.to_s.downcase
  rescue Exception => ex
    puts "Exception catched: #{ex}"
  end
end
