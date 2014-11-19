Feature: Registering to play the game
  In order to play the game
  As a person with a name
  I want to register with my name

Scenario: Visiting the registration page
  Given I enter my name
  When I click "Play"
  And I am greeted
  Then I should be asked to make my choice