Given(/^I am on the gamepage$/) do
  visit '/gamepage'
end

Then(/^I choose a choice of weapon$/) do
  click_radio 'weapon_choice', with: 'Rock'
  click_button 'Fight'
end

When(/^I click the fight button$/) do
	click_button 'Fight'
end

Then(/^I should see content determining the winner$/) do
  expect(page).to have_content(text)
end