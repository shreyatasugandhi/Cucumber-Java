#Author: Shreyata Sugandhi
Feature: LogIn - As a tester I want to validate LogIn feature for ZeroBank App

  Scenario: As a user given a valid user id and password I should be able to log into the application zero bank
    Given Zero app opened in browser
    When I enter username as "username"
    And I enter password as "password"
    And I click on SignIn button
    Then I should be able to log into the application and I should land on Home Page

  Scenario Outline: As a tester I should be able to validate error megs for invalid login id and password
    Given Zero app opened in browser
    When I enter username as "<loginID>"
    And I enter password as "<pass>"
    And I click on SignIn button
    Then I should get an error msg "Login and/or password are wrong."

    Examples: 
      | loginID | pass  |
      | name1   | pass3 |
      | name2   | pass2 |
