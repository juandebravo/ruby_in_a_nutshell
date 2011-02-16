
apps = []

3.times{|time|
  apps << {:name => "app#{time}", :url => "http://localhost"}
}

#
# Create class and include setters and getters using hash keys
#
def create_object(obj)

  if obj.instance_of?(Array)
    value = []
    obj.each{|app|
      value.push create_object(app)
    }
  elsif obj.instance_of?(Hash)
    klass = Class.new
    #metaclass = class << klass; self; end
    klass.class_eval{
      obj.each_key{|k|
        self.send :attr_accessor, k
      }
    }
    value = klass.new
    obj.each_pair{|k,v|
      value.send "#{k}=".to_sym, v
    }
  else
    value = obj
  end
  return value
end

obj = create_object(apps)

obj.each{|app|
  p app
}

#
# Class that defines an object and
# then setters and getters are defined in
# the object (not in the class)
#
class AppObject
  def metaclass
    class << self
      self
    end
  end

  def define_attributes(hash)
    hash.each_pair { |key, value|
      metaclass.send :attr_accessor, key # similar -> self.class.send ...
      send "#{key}=".to_sym, value
    }
  end
end

p "-----------------"

apps.each{|app|
  obj = AppObject.new
  obj.define_attributes(app)
  p obj
}



