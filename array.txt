class TestClass
   def initialize(var, param1, param2)
      $firstvar = var
      @param1 = param1
      @param2 = param2
   end

   def show_value(var)
      lambda {puts "firstvar is = #{@firstvar} and given var is #{var}"}
   end
end # end of the class

def closure_caller(closure_call)
  closure_call.call
end

test_class = TestClass.new("test", "some value", "some other value")
closure_call = test_class.show_value("hello closure")


#closure_caller(closure_call)

def proc_abc()
  puts "before proc"
  proc_obj = Proc.new do 
    puts "from proc"
    return
    puts "hello"
  end
  proc_obj.call
  puts "after proc"
end

proc_abc()

