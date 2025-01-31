```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20) # Directly modifying instance variable
puts my_object.value #=> 20

# This is bad practice because it bypasses the encapsulation of the class.
# It's better to use a setter method for modifying instance variables
```