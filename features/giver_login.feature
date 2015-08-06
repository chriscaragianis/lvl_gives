Feature: Giver Account Creation
  In order to identify my actions on the app with my real identity
  As a giver
  I want to create a user account

  Background:
    Given there is no logged in user
    And user visits welcome page

  Scenario: New user visits site
    Then Create Account button on header is displayed

  Scenario: New user clicks Create Account button on header
    When user clicks Create Account button on header
    Then new account page is loaded

  Scenario: User clicks Create Account button on new account page
    Given user clicks Create Account button on header
    And first_name field is completed
    And last_name field is completed
    And email field is completed
    And password field is completed
    And confirm_password field is completed
    When user submits form
    Then a new account is created
