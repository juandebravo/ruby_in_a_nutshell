!SLIDE smaller
# user.rb #

    @@@ ruby
    
    module JajahApi
    
      class User
        %W(name surname phone).each{|attr|
           attr_accessor attr.to_sym
        }
    
        def initialize(params=nil)
          unless params.nil?
            @name    = params[:name]   unless params[:name].nil?
            @surname = params[:surname] unless params[:surname].nil?
            @phone   = params[:phone] unless params[:phone].nil?
          end
        end
    
        def to_s
          data = String.new
          data << "#{self.name}{ "
          data << "\n"
          self.instance_variables.each{|var|
            data << "  " + var[1..-1] + ": " + self.instance_variable_get("#{var}") + "\n"
          }
          data << "}"
          return data
        end
    
        %W(downcase upcase).each{|method|
          define_method(method){|*args|
            self.to_s.send(method, *args)
          }
        }
      end
    end
