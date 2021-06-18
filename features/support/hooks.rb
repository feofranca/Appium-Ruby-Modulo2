Before do
  $driver.start_driver
  set_env_variable
  driver.manage.timeouts.implicit_wait = 60
  id('android:id/button1').click if device_is_android?
end

def set_env_variable
  device_is_android? ? $ENV = Android : $ENV = IOS
end

After do |scenario|
  $driver.driver_quit
end
