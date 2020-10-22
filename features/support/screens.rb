# frozen_string_literal: false

# start screen after loading application
class HomeScreen
  def button_get_started
    find_element(:id, 'getstarted_layout')
  end

  def button_how_it_works
    find_element(:id, 'seehowitwork')
  end
end

# screen that appears after hitting Get Started button
class CreateAccountScreen
  def email
    find_element(id: 'edtEmail')
  end

  def password
    find_element(id: 'edtPassword')
  end

  def next
    find_element(id: 'action_next')
  end
end

# Screens describing functionality
class HowItWorksScreen
  def description
    find_element(id: 'description')
  end
end
