Feature: Create New Account Test

    Scenario: First test
    Given I launch app
    Then I see GetStarted button
    When I press GetStarted button
    Then I see CreateAccount screen
    When I enter my email
    And I enter my password
    And I hit Next button
    Then I see NewProfile screen