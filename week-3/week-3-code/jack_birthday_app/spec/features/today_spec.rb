require 'timecop'

feature 'today' do
  scenario 'if its your bday it shows your bday' do
    Timecop.freeze(Time.new(2021, 6, 14))
    register
    expect(page).to have_content 'Happy Birthday Jack!'
  end
end
