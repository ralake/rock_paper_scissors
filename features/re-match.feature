Feature: re-match
  In order to play the game again
  As a player of the game
  I want to make another choice of weapon

Background: first game
  Given I enter my name
  When I click "Play"
  And I am greeted
  Then I should be asked to make my choice
  Given I make my choice of weapon
  Then I should see the result of the game

Scenario: Playing again
  Given I am on the results page
  And I click "Yes"
  Then I should be asked to make my choice