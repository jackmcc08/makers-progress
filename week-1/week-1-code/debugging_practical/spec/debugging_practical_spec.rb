require 'debugging_practical_solve'

describe "encode" do
  it "encodes a given string" do
    expect(encode("theswiftfoxjumpedoverthelazydog", "secretkey")).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  end
end

describe "decode" do
  it "decodes a given encoded string" do
    expect(decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")).to eq "theswiftfoxjumpedoverthelazydog"
  end
end

describe "factorial" do
  it "returns 120 when called with 5" do
    expect(factorial(5)).to eq 120
  end
end
