# Add options for the Chrome browser
chrome_options = Selenium::WebDriver::Chrome::Options.new

# Disable notifications
chrome_options.add_argument("--disable-notifications")

Capybara.register_driver :selenium_chrome_in_container do |app|
  Capybara::Selenium::Driver.new app,
    browser: :remote,
    url: "http://selenium_chrome:4444/wd/hub",
    options: chrome_options
end
