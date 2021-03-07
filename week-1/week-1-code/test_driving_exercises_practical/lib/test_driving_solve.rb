# Exercise 1

# As a student
# So that I can remember people's names
# I want an IRB application that stores the names of people I meet

# >store_name("Jack")
# => "Name stored!"
# >store_name("Monty")
# => "Name stored!"
# >show_names
# => [ "Jack", "Monty"]


# Exercise 2

# As a student
# So that I can understand my recent motivation
# I want an IRB application that stores my motivation ratings
# And I want to see the average of my last 3 ratings

# > track_motivation(5)
# => "Motivation stored!"
# > show_motivations
# => [5]
# > track_motivation(6)
# => "Motivation stored!"
# > track_motivation(7)
# => "Motivation stored!"
# > show_motivations
# => [5, 6, 7]
# > show_average_motiviation
# => 6  ((5+6+7)/3)


# Exercise 3

# turn exercise 1 into a test

# describe "the remember name method" do
#   it "gives us a confirmation message" do
#     expect(store_name("Jack")).to eq "Name stored!"
#   end
# end


# Exercise 4

# created rspec file



# Exercise 5

# solve the failed error test
class Names
  def initialize
    @names = []
  end
  def store_name(name)
    @names << name
    "Name stored!"
  end

  def show_names
    @names
  end
end

# SOLVED
