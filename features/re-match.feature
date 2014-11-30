Feature: re-match
  In order to play the game again
  As a player of the game
  I want to make another choice of weapon

Background: Playing the game
  Given I register
  When I make my choice of weapon
  Then I should see the result of the game

Scenario: Playing again
  Given I decide to play again
  When I make my choice
  Then I should see another result

