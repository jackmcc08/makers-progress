require 'exercises'

# Exercises 1

describe Note do
  let(:test) { Note.new("Example Note", "This is an important note", formatter)}
  let(:formatter) { double(:NoteFormatter, format: "Title: Example Note\nThis is an important note") }

  describe '#display' do
    it "displays the note in a certain format" do
      expect(test.display).to eq "Title: Example Note\nThis is an important note"
    end
  end
end

# Exercises 2

describe Diary do
  let(:test_diary) { Diary.new(entry_class_double) }

  let(:entry_class_double) {double(:entry_class)}

  let(:test_entry) { double(:entry, title: "Example Entry", body: "This is an important Entry") }

  let(:test_entry_2) { double(:entry, title: "Another Entry", body: "This is an important Entry") }

  describe '#add' do
    it "adds an entry to the diary" do
      allow(entry_class_double).to receive(:new).with(any_args).and_return(test_entry)

      expect(test_diary.add("Example Entry", "This is an important Entry")).to be_a Array
    end
  end

  describe '#index' do
    it "displays all the titles of the entries in a list" do
      allow(entry_class_double).to receive(:new).with(any_args).and_return(test_entry)
      test_diary.add("Example Entry", "This is an important Entry")
      allow(entry_class_double).to receive(:new).with(any_args).and_return(test_entry_2)
      test_diary.add("Another Entry", "This is an important Entry")
      expect(test_diary.index).to eq "Example Entry\nAnother Entry"
    end
  end
end

# Exercise 3

describe EmailClient do
  let(:test_client) {  EmailClient.new(dummy_message_class) }

  let(:dummy_message_class) { class_double( 'Message', :new => "This is a new Message")}

  describe '#message' do
    it "creates a new message when called" do
      expect(test_client.message).to eq "This is a new Message"
    end
  end
end

describe SayHello do
  let(:test_hello) {SayHello.new(dummy_client_class.new)}

  let(:dummy_client_class) { class_double('EmailClient', new: dummy_client) }

  let(:dummy_client) {instance_double('EmailClient', message: dummy_message)}

  let(:dummy_message) {instance_double('message',  send: nil)}

  describe '#run' do
    it 'sends a message' do
      expect(test_hello.run).to eq nil
    end
  end
end


# Exercise 4 - optional extension

describe Greeter do
  let(:test_greeter) { Greeter.new(dummy_input)}

  let(:dummy_input) { double(:kernel, gets: "Jack\n", chomp: "Jack")}

  describe '#greet' do
    it "obtains input from user and then says Hello" do
      expect(test_greeter.greet).to eq nil
    end
  end
end


# DONE!
