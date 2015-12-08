class TestClass
	def hello
		puts "Hello from TestClass"
	end

	def self.class_method
		puts "This is a class method"
	end
end

class ThirdClass
end

class SubClass < TestClass
end

sub_class = SubClass.new

sub_class.hello

SubClass.class_method

TestClass.class_method
