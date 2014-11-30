Given(/^I register$/) do
  visit '/'
  click_button("Register")
  fill_in 'player_name', :with => 'Rich'
  click_button("Play")
  expect(page).to have_content("Hi Rich")
end

When(/^I make my choice of weapon$/) do
  click_button('Rock')
end

Then(/^I should see the result of the game$/) do
  expect(page).to have_content("You chose Rock and the computer chose")
end