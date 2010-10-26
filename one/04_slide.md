!SLIDE smaller
# Example #

    @@@ ruby
    
    class Client
      def create_user(partner_id, user_name, msisdn, nickname = nil)
        args = [partner_id, user_name, msisdn, nickname]
        print_values(args)
    
        rand(1000) # return new user id
      end
    
      def update_user(partner_id, user_id, msisdn, nickname)
        args = [partner_id, user_id, msisdn, nickname]
        print_values(args)
      end
    
      private
     
      def print_values(*args)
        args.each{|param|
          puts param
        }
        puts "\n"
      end
    end
    
    
