Before do
  driver.start_driver
  set_env_variable
  cancel_update if device_is_android?
  driver.manage.timeouts.implicit_wait = 30
end

After do
  add_imagem_allure
  driver.driver_quit
end

def cancel_update
  id('android:id/button1').click
end

def set_env_variable
  $ENV = device_is_android? ? Android : IOS
end

def add_imagem_allure
  temp_shot = 'reports/logs/temp_shot.png'

  File.open(temp_shot, 'wb') do |f|
    f.write(Base64.decode64(driver.screenshot_as(:base64)).force_encoding('UTF-8'))
  end

  Allure.add_attachment(
    name: 'screenshot',
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot)
  )
end

at_exit do
  `allure generate reports/logs -o reports/allure-results --clean`
  `allure open reports/allure-results`
end
