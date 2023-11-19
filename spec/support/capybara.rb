require 'selenium/webdriver'
# Add options for the Chrome browser
chrome_options = Selenium::WebDriver::Chrome::Options.new

# Disable notifications
chrome_options.add_argument("--disable-notifications")

headless_chrome_options = Selenium::WebDriver::Chrome::Options.new
headless_chrome_options.add_argument("headless")
headless_chrome_options.add_argument("disable-gpu")


Capybara.register_driver :selenium_chrome_in_container do |app|
  Capybara::Selenium::Driver.new app,
    browser: :remote,
    url: "http://selenium_chrome:4444/wd/hub",
    options: chrome_options
end

Capybara.register_driver :headless_selenium_chrome_in_container do |app|
  Capybara::Selenium::Driver.new app,
    browser: :remote,
    url: "http://selenium_chrome:4444/wd/hub",
    options: headless_chrome_options
end
