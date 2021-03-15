require_relative '../lib/secret_diary'

### WARNING ###
# For the purposes of this exercise, you are testing after
# the code has been written. This means your tests are prone
# to false positives!
#
# Make sure your tests work by deleting the bodies of the
# methods in `secret_diary.rb`, like this:
#
# ```ruby
# def write(new_message)
# end
# ```
#
# If they fail, then you know your tests are working
# as expected.
### WARNING ###

RSpec.describe SecretDiary do
  let(:test_diary) { instance_double("SecretDiary") }
  let(:test_message) { instance_double("Message") }

  context "when locked" do
    # pending "refuses to be read"
    it "refuses to be read" do
      expect(test_diary).to receive(:read) { "Go away!" }
      expect(test_diary.read).to eq "Go away!"
    end

    it "refuses to be written" do
      expect(test_diary).to receive(:write).with(test_message) { "Go away!" }
      expect(test_diary.write(test_message)).to eq "Go away!"
    end
  end

  context "when unlocked" do
    it "gets read" do
      expect(test_diary).to receive(:read) { "Juicy Gossip!" }
      expect(test_diary.read).to eq "Juicy Gossip!"
    end

    it "gets written" do
      expect(test_diary).to receive(:write).with(test_message) { nil }
      expect(test_diary.write(test_message)).to be_nil
    end
  end

#  ----

  let(:test_secret_diary) { SecretDiary.new(test_diary)}
  let(:test_diary) { instance_double("Diary") }
  let(:test_message) { instance_double("Message") }

  context "when locked" do
    it "refuses to be read" do
      expect(test_secret_diary.read).to eq "Go away!"
    end

    it "refuses to be written" do
      expect(test_secret_diary.write(test_message)).to eq "Go away!"
    end
  end

  context "when unlocked" do
    before do
      test_secret_diary.unlock
    end

    it "gets read" do
      expect(test_diary).to receive(:read) { "Juicy Gossip!" }
      expect(test_secret_diary.read).to eq "Juicy Gossip!"
    end

    it "gets written" do
      expect(test_diary).to receive(:write).with(test_message) { "Juicy Gossip" }
      expect(test_secret_diary.write(test_message)).to be_nil
    end
  end

end
