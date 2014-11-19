Given(/^I visit the homepage$/) do
  visit '/'
end

When(/^I click "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  visit '/registration'
  expect(page).to have_content(arg1)
end