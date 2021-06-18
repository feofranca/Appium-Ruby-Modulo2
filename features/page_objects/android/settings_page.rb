require './features/page_objects/settings_page'

module Android
  class SettingsPage < BaseSettingsPage
    def initialize
      txt_value = '//android.widget.RelativeLayout/android.widget.EditText'
      btn_save = 'org.traeg.fastip:id/saveSettingsButton'

      super(txt_value, btn_save)
    end
  end
end
