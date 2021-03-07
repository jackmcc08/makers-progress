require 'encapsulation.rb'

describe "SecretDiary" do
  test_diary = SecretDiary.new

  it "can lock the diary" do
    expect(test_diary.lock).to eq "Diary is now locked"
  end

  it "can unlock the diary" do
    expect(test_diary.unlock).to eq "Diary is now unlocked"
  end

end

describe "Entries" do
  locked_diary = SecretDiary.new
  locked_diary.lock
  unlocked_diary = SecretDiary.new
  unlocked_diary.unlock

  it "can add_entry, but only when unlocked" do
    expect(unlocked_diary.entries.add_entry).to eq "You added an entry"
    expect(locked_diary.entries.add_entry).to eq "Diary is locked"
  end

  it "can print entries, but only when unlocked" do
    expect(unlocked_diary.entries.get_entries).to eq ["Entry 1"]
    expect(locked_diary.entries.get_entries).to eq "Diary is locked"
  end
end

describe Lock do
  # test_diary_2 = Lock.new

  it { is_expected.to respond_to :lock }
  it { is_expected.to respond_to :unlock }

  it "can lock" do
    expect(subject.lock).to eq true
  end

  it "can unlock" do
    expect(subject.unlock).to eq false
  end

end

describe SecretDiary_2 do

  it { is_expected.to respond_to :get_entries }
  it { is_expected.to respond_to :add_entry }
it { is_expected.to respond_to :lock }


  it "displays all the entries when unlocked" do
    subject.lock.unlock
    expect(subject.get_entries).to eq []
  end
  it "does not display the entries when locked" do
    subject.lock.lock
    expect(subject.get_entries).to eq "Diary is locked"
  end

  it "adds an entry when unlocked" do
    subject.lock.unlock
    expect(subject.add_entry("test_text")).to eq "test_text"
  end

  it "does not allow an entry to be added when locked" do
    subject.lock.lock
    expect(subject.add_entry("test_text")).to eq "Diary is locked"
  end

end

# describe "Entry_2" do
#   test_entry = Entry_2.new("test_entry")
#   it "creates an entry and adds it to entries " do
#     expect(test_entry.add_entry).to eq nil
#   end
# end
