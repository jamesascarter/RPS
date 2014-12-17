Given(/^I am on the gamepage$/) do
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
