Feature: Giver Login
  In order to identify my actions on the app with my real identity
  As a giver
  I want to create a user account and securely log in to the app

  Background: 
    Given: there is no logged in user

  Scenario: New user visits site
    Given a user visits the welcome page
    When the welcome page loads
    Then the Create Account button on header is displayed

  Scenario: New user clicks Create Account button on header
    Given a user visits the welcome page
    When the user clicks the Create Account button on header
    Then the new account page is displayed

  Scenario: User clicks Create Account button on new account page
    Given a user visits the welcome page
    And the first name field is completed
    And the last namem field is completed
    And the email field is completed
    And the password field is completed
    And the confirm password field is completed
    And all fields are validated
    When the user clicks the Create Account button on new account page
    Then a new user object is created

  Scenario: User clicks Sign In buttons
    Given the user visits the welcome page 
    When the user clicks the Sign In button
    Then the Sign In form is displayed

  Scenario: User signs in
    Given the email field is completed
    And the password field is completed
    And all fields are validated
    And a user account with the given email exists
    And the password matches the password for the user account
    When the user clicks the Sign In button
    Then the logged in user is set to the given user account 
