def register
  visit '/'
  fill_in 'first_name', with: 'Jack'
  fill_in 'last_name', with: 'McCarthy'
  fill_in 'day', with: 14
  select 'June', from: 'month'
  click_button 'Go!'
end
