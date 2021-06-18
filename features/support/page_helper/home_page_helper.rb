module PageObjects
  def home
    @home ||= $ENV::HomePage.new
  end

  def settings
    @settings ||= $ENV::SettingsPage.new
  end
end
