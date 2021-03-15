# Exercise 2

class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = Password_Shell.new(password)
  end

  # def authenticate
  #   return password.authenticate
  #   return true if candidate_password == @password
  #   @authenticated = true
  # end

  def profile(password)
    return "Profile locked." if !@password.authenticate(password)
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Password_Shell
  def initialize(password)
    @password = password
  end

  def authenticate(password)
    return true if @password == password
    false
  end
end
#
# test = User.new("jack", 'from London', 30, 'testing')
#
# puts test.profile('testing')



# Exercise 4

class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def encrypter(direction, method, steps = 0)
    @contents = method.encrypter(direction.sign, @contents, steps)
  end
end

class Scramble_by
  def initialize
    @sign = 'add'
  end

  attr_reader :sign
end

class Unscramble_by
  def initialize
    @sign = 'subtract'
  end

  attr_reader :sign
end

class Reverse
  def encrypter(direction, contents, steps)
    contents.reverse
  end
end


class AdvancingChars
  def encrypter(direction, contents, steps)
    input = contents.chars
    output = input.map do |char|
      if direction == "subtract"
        (char.ord - steps).chr
      elsif direction == "add"
        (char.ord + steps).chr
      end
    end
    contents = output.join
  end
end

test = ScrambledDiary.new("testing")

puts test.read # testing

test.encrypter(Scramble_by.new, Reverse.new)
puts test.read # gnitset
test.encrypter(Unscramble_by.new, Reverse.new)
puts test.read # testing

test.encrypter(Scramble_by.new, AdvancingChars.new, 10)
puts test.read # ~o}~sxq
test.encrypter(Unscramble_by.new, AdvancingChars.new, 10)
puts test.read # testing
