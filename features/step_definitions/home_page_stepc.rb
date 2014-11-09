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


