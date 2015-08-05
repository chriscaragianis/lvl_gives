Feature: Giver Login
  In order to identify my actions on the app with my real identity
  As a giver
  I want to create a user account and securely log in to the app

  Background: 
    Given there is no logged in user
    And user visits welcome page

  Scenario: New user visits site
    Then Create Account button on header is displayed

  Scenario: New user clicks Create Account button on header
    When user clicks Create Account button on header
    Then new account page is loaded 

  Scenario: User clicks Create Account button on new account page
    Given first-name field is completed
    And last-name field is completed
    And email field is completed
    And password field is completed
    And confirm-password field is completed
    When user clicks the Create Account button on new account page
    Then a new user object is created

  Scenario: User clicks Sign In buttons
    When the user clicks the Sign In button
    Then the Sign In form is displayed

  Scenario: User signs in
    Given the password field is completed
    And all fields are validated
    And a user account with the given email exists
    And the password matches the password for the user account
    When the user clicks the Sign In button
    Then the logged in user is set to the given user account 
