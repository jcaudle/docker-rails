Capybara.register_driver :chrome_in_container do |app|
  Capybara::Selenium::Driver.new app,
    browser: :remote,
    url: "http://chrome:4444/wd/hub",
    desired_capabilities: :chrome
end

Capybara.javascript_driver = :chrome_in_container
Capybara.app_host = "http://web:3000"
