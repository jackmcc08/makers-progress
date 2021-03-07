class Test

attr_accessor :name

  def initialize(name)
    @name = name
  end
end

test = Test.new("Jeff")

puts test.name
