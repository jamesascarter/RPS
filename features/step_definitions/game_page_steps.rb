Given(/^I am on the gamepage$/) do
	visit '/'
	fill_in 'name', with: 'James'
	choose('computer')
  click_button 'Sign in'
  visit '/computer'
end

Then(/^I choose a choice of weapon$/) do
  
  choose("rock")
  click_button 'Fight'
end

When(/^I click the fight button$/) do
	click_button 'Fight'
end

Then(/^I should see content determining the winner$/) do
  expect(page).to have_content(text)
end

Given(/^I am on the waiting page$/) do
	visit '/waiting_page'
  expect(page).to have_content(text)
end
