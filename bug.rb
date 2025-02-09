```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle missing methods here
    puts "Method '#{method_name}' not found"
  end

end

my_object = MyClass.new(10)
puts my_object.value # This works fine
puts my_object.nonexistent_method # This will execute method_missing, and everything seems okay.
puts my_object.value # Unexpected: this will return nil!
```