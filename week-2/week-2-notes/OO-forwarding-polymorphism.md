# OOP

## FORWARDING

Forwarding is calling methods on an object from within another object

e.g.
```ruby
class Diary
  def read
  end
end

class SecretDiary
  def initialize
    @diary = Diary.new
  end

  def read
    @diary.read
  end
end

```

## POLYMORPHISM

Extracting identical code out of a set of code and building a template code and then making shorter different code to fit into the template. 
