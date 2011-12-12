
module JajahApi

  class Did

    def initialize(params = {})
      unless params.empty?
        @number    = params[:number]   unless params[:number].nil?
        @hold_key  = params[:hold_key] unless params[:hold_key].nil?
      end
      @allocated = false
    end

    def allocate(user, destination)
      @allocated = true
    end
   
    def is_allocated?
      @allocated
    end

  end

end
