require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'pry'
require 'site_prism'
require_relative 'helper.rb'

BROWSER = ENV['BROWSER']
World(Helper)

Capybara.register_driver :selenium do |app|
    
    if BROWSER.eql?('chrome_headless')

        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--headless')
        options.add_argument('--window-size=1440x768')
        options.add_argument('--disable-gpu')
      
        Capybara::Selenium::Driver.new(
          app,
          browser: :chrome,
          options: options
        )
        elsif BROWSER.eql?('chrome')
            Capybara::Selenium::Driver.new(app,browser: :chrome)
            
        end
    end
    
    

    
Capybara.configure do |config|
  config.default_driver =:selenium
  Capybara.javascript_driver = :selenium

  Capybara.page.driver.browser.manage.window.resize_to(1440,768)
end

Capybara.default_max_wait_time = 20