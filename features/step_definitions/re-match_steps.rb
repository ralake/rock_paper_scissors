Given(/^I decide to play again$/) do
  click_button("Yes")
end

When(/^I make my choice$/) do
  click_button("Scissors")
end

Then(/^I should see another result$/) do
  expect(page).to have_content("You chose Scissors and the computer chose")
end