
module JajahApi

  class User
    attr_accessor :name
    attr_accessor :surname
    attr_accessor :phone

    # %w<name surname phone>.each do |attr|
    #   attr_accessor attr.to_sym
    # end

    def initialize(params = {})
      
      unless params.empty?
        @name    = params[:name]    if params.has_key?(:name)
        @surname = params[:surname] if params.has_key?(:surname)
        @phone   = params[:phone]   if params.has_key?(:phone)
      end

    end

    def to_s

      data = String.new
      data << "\n#{self.name} { "
      data << "\n"
      data << " name: #{name}\n"
      data << " surname: #{surname}\n"
      data << " phone: #{phone}\n"
      
      #self.instance_variables.each do |var|
      #  data << " " + var[1..-1] + ": " + self.instance_variable_get(var) + "\n"
      #end

      data << "}\n\n"
      data
    end
  end
end
