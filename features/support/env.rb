require "selenium-webdriver"
require "capybara"
require "capybara/cucumber"
require "rspec"
require 'site_prism'

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  
  Capybara.configure do |config|
    
    config.default_driver = :selenium_chrome
    
    Capybara.default_max_wait_time = 13
    
  
    config.app_host = "https://www.petz.com.br/"
    
  end
  