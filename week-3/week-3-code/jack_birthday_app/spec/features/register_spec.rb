require 'timecop'

feature 'registration' do
  scenario 'you start the app and sign in and it shows you how long until your birthday' do
    Timecop.freeze(Time.new(2021, 6, 1))
    register
    expect(page).to have_content 'Your birthday will be in 13 days, Jack!'
  end
end
