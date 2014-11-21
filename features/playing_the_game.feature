Feature: Playing the game
  In order to play the game
  As a person who has registered
  I want to make my choice of weapon

Background: Visiting the registration page
  Given I enter my name
  When I click "Play"
  And I am greeted
  Then I should be asked to make my choice

Scenario: Playing the game
  Given I make my choice of weapon
  Then I should see the result of the game