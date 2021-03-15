require 'year'

describe Year do
  describe "#leap_year" do
    it "will return true for any year divisible by 400" do
      expect(subject.leap_year(400)).to be true
    end

    it "will return false for any year divisble by 100 but not by 400" do
      expect(subject.leap_year(300)).to be false
    end

    it "will return true for any year divisible by 4 but not by 100" do
      expect(subject.leap_year(4)).to be true
    end

    it "will return false for any year that is not divisible by 4" do
      expect(subject.leap_year(3)).to be false
    end
  end

  describe "#all_leap_years_between" do
    it "will return an array of years which are leap years" do
      expect(subject.all_leap_years_between(1990,2002)).to eq [1992, 1996, 2000]
    end
  end
end
