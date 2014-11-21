Given(/^I am on the results page$/) do
  expect(page).to have_content("Play again?")
end