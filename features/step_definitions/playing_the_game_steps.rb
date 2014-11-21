Given(/^I make my choice of weapon$/) do
  click_button("Rock")
end

Then(/^I should see the result of the game$/) do
  expect(page).to have_content("Play again?")
end
