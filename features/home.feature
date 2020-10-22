Feature: Home Screen Test

    Scenario: Register new account test

        Given I launch app
        Then I see GetStarted button
        When I press GetStarted button
        Then I see screen "Create account"
        When I enter my email "test@test.com"
        And I enter my password "11223344"
        And I hit Next button
        Then I see screen "New Profile"

    Scenario: Check Swipes on How It Works

        Given I launch app
        Then I see SeeHowItWorks button
        When I press SeeHowItWorks button
        Then I see screen with text "Get honest wine ratings on any wine"
        When I swipe left
        Then I see screen with text "largest wine selection directly from your phone"
        When I swipe right
        Then I see screen with text "Get honest wine ratings on any wine"
        