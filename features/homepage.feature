Feature: Starting a game of rock paper scissors
  In order to play the game
  As a person in need of a break
  I want to start a new game

Scenario: Visiting the homepage
  Given I visit the homepage
  When I click "Play"
  Then I should see "Enter your name"