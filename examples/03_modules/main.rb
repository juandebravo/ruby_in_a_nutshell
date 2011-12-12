$:.unshift(File.dirname(__FILE__))

require 'jajah_api'

if __FILE__ == $0

  puts "We are using JajahAPI v.#{JajahApi::VERSION}"

  user = JajahApi::User.new({:name    => "Juan",
                   :surname => "de Bravo",
                   :phone   => "05422795**"
                  })

  puts user
end
