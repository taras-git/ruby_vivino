wait = Selenium::WebDriver::Wait.new :timeout => 30

Given('I launch app') do
  end
  
  Then('I see GetStarted button') do 
    wait.until { @driver.find_element(:id, "getstarted_layout").displayed? }
  end
  
  Then('I press GetStarted button') do 
    find_element(id: "getstarted_layout").click
  end

  Then('I see CreateAccount screen') do
    wait.until { @driver.find_element(xpath: "//*[@text='Create account']", ).displayed? }
  end
  
  Then('I enter my email') do
    find_element(id: "edtEmail").send_keys("test@test.com")
  end
  
  Then('I enter my password') do
    find_element(id: "edtPassword").send_keys("11223344")
    find_element(id: "action_next").click
  end

  Then('I hit Next button') do
    find_element(id: "action_next").click
  end

  Then('I see NewProfile screen') do
    wait.until { @driver.find_element(xpath: "//*[@text='New Profile']", ).displayed? }
end