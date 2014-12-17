Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I sign in$/) do
  fill_in 'name', with: 'James'
  click_button 'Sign in'
end

Then(/^I should enter gamepage$/) do
  visit '/gamepage'
end

Then(/^choose an opponent$/) do
  choose('computer')
end

When(/^I enter "(.*?)"$/) do |arg1|
	fill_in 'name', with: ""
	click_button 'Sign in'
end

When(/^I choose computer opponent$/) do
	choose('computer')
end


Then(/^I should enter computer gamepage$/) do
   visit '/computer'
end

When(/^I choose multiplayer opponent$/) do
	choose('multiplayer')
end

Then(/^I should enter multiplayer page$/) do
	visit('/multiplayer')
end

Given(/^I am on the multiplayer page$/) do
	visit '/multiplayer'
end






