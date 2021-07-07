require './features/page_objects/settings_page'

module IOS
  class SettingsPage < BaseSettingsPage
    def initialize
      txt_value = '//XCUIElementTypeOther[@name="main"]/XCUIElementTypeTextField'
      btn_save = 'Save'

      super(txt_value, btn_save)
    end
  end
end
