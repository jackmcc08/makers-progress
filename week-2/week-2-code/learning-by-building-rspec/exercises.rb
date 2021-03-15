## EXERISE 1

# expect(true).to eq true
# > expect_to_be_equal(true, true)
# => "Test passes! :)"
# > expect_to_be_equal(true, false)
# => "Test fails! D:"

# Produce the above definition

def expect_to_be_equal(input, expected_result)
  input == expected_result ? "Test passes! :)" : "Test fails! D:"
end

puts expect_to_be_equal(true, true)
puts expect_to_be_equal(true, false)

## Exercise 2

# make this pass
# > Expect.new.to_be_equal(true, true)
# => "Test passes! :)"
# > Expect.new.to_be_equal(true, false)
# => "Test fails! D:"

class Expect
  def to_be_equal(input, expected_result)
    input == expected_result ? "Test passes! :)" : "Test fails! D:"
  end
end

puts Expect.new.to_be_equal(true, true)
puts Expect.new.to_be_equal(true, false)

## Exercise 3

#Make this pass
# > Expect.new(true).to_equal(true)
# => "Test passes! :)"
# > Expect.new(true).to_equal(false)
# => "Test fails! D:"


class Expect
  def initialize(input)
    @input = input
  end

  def to_equal(expected_result)
    @input == expected_result ? "Test passes! :)" : "Test fails! D:"
  end
end

puts Expect.new(true).to_equal(true)
puts Expect.new(true).to_equal(false)


# Exercise 4

class Expect
  def initialize(input)
    @input = input
  end

  def to(expected_result)
    @input == expected_result.input ? "Test passes! :)" : "Test fails! D:"
  end
end

class Equal
  attr_reader :input

  def initialize(input)
    @input = input
  end
end

puts Expect.new(true).to(Equal.new(true))
puts Expect.new(true).to(Equal.new(false))

# Exercise 5

def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end

puts expect(true).to(eq(true))
puts expect(true).to(eq(false))

puts expect(true).to eq true
puts expect(true).to eq false
