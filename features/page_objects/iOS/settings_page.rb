require './features/page_objects/settings_page'

module IOS
  class SettingsPage < BaseSettingsPage
    def initialize
      txtValue = '//XCUIElementTypeOther[@name="main"]/XCUIElementTypeTextField'
      btn_save = 'Save'

      super(txtValue, btn_save)
    end
  end
end
