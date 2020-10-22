# frozen_string_literal: false

wait = Selenium::WebDriver::Wait.new timeout: 30

home = HomeScreen.new
acc = CreateAccountScreen.new

Given('I launch app') do
end

Then('I see GetStarted button') do
  wait.until { home.button_get_started.displayed? }
end

Then('I see SeeHowItWorks button') do
  wait.until { home.button_how_it_works.displayed? }
end

When('I press GetStarted button') do
  home.button_get_started.click
end

When('I press SeeHowItWorks button') do
  home.button_how_it_works.click
end

Then('I see screen {string}') do |string|
  wait.until { element_with_text(string).displayed? }
end

Then('I see screen with text {string}') do |string|
  wait.until { element_with_partial_text(string).displayed? }
end

When('I enter my email {string}') do |string|
  acc.email.send_keys(string)
end

And('I enter my password {string}') do |string|
  acc.password.send_keys(string)
end

And('I hit Next button') do
  acc.next.click
end

When('I swipe left') do
  swipe_left
end

When('I swipe right') do
  swipe_right
end
