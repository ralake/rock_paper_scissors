Feature: Playing the game
  In order to play the game
  As a person in need of a break
  I want to make my choice of weapon and see the results

Scenario: Playing the game
  Given I register
  When I make my choice of weapon
  Then I should see the result of the game