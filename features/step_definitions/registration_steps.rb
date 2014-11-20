Given(/^I enter my name$/) do
  visit '/registration'
  fill_in 'player_name', :with => 'Rich'
end

When(/^I am greeted$/) do
  expect(page).to have_content("Hi Rich")
end

Then(/^I should be asked to make my choice$/) do
  expect(page).to have_content("Choose your weapon...")
end