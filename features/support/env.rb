 require 'capybara/cucumber'
 require "selenium-webdriver"
 require 'gherkin'
 require 'capybara/session'

 Capybara.default_driver = :selenium
 Capybara.default_wait_time = 20
 Capybara.javascript_driver = :webkit