# Dependence Injection

It is a technique for helping you test classes in isolation.

Rather than hard-coding in classes, you set them as part of the arguments of the initialize of a class.

You can then mock them in when testing.

```ruby
#Dependency Injection of an Instance

class Greeter
  def initialize(smiley = Smiley.new)
      @smiley = smiley
  end
end

# Dependency Injection of a Class Variable

class CarFactory
  def initialize(car_class = Car)
    @car_class = car_class
  end
end

```
