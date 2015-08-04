Feature: Collect Giver Data

  In order to align my giving with my values and priorites
  As a giver
  I want to provide data on my values and priorites

  Background: 
    Given a logged in user

  Scenario: Giver is prompted to take value survey on new account creation
    Given logged in user has no values data
    When the logged in user visits any page
    Then the user is prompted to take the values survey

  
