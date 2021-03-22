require 'birthday'
require 'timecop'
require 'date'

describe Birthday do
  let(:test_birthday) { Birthday.new("Jack", "McCarthy", 14, "June") }

  describe "#my_birthday" do
    context 'When it is my birthday' do
      it 'tells me it is my birthday' do
        Timecop.freeze(Date.new(2021, 6, 14))
        expect(test_birthday.my_birthday).to eq true
      end
    end

    context 'When it is not my Birthday' do
      it 'tells me how many days until my birthday' do
        Timecop.freeze(Date.new(2021, 6, 1))
        expect(test_birthday.my_birthday).to eq 13
      end

      it 'tells me how many days until my birthday' do
        Timecop.freeze(Date.new(2021, 7, 1))
        expect(test_birthday.my_birthday).to eq 348
      end
    end
  end
end
