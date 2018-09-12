require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.default_driver = :selenium

Capybara.configure do |config|
  config.ignore_hidden_elements = true
  config.default_max_wait_time = 4
end

Capybara.current_session.driver.browser.manage.window.maximize