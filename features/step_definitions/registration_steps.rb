Given(/^I enter my name$/) do
  visit '/registration'
  fill_in 'player_name', :with => 'Rich'
  click_button("Play")
end

When(/^I am greeted$/) do
  expect(page).to have_content("Hi Rich")
end

Then(/^I should be asked to make my choice$/) do
  pending # express the regexp above with the code you wish you had
end