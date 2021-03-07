require 'test_driving_solve'

describe "the remember name method" do
  it "gives us a confirmation message" do
    expect(Names.new.store_name("Jack")).to eq "Name stored!"
  end
end

describe "displays all the remembered names" do
  test = Names.new
  test.store_name("Jack")
  test.store_name("Monty")
  test.store_name("Alex")
  it "displays all the stored names" do
    expect(test.show_names).to eq ["Jack", "Monty", "Alex"]
  end
end
