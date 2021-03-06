require './features/page_objects/home_page'

module IOS
  class HomePage < BaseHomePage
    def initialize
      txt_value = '//XCUIElementTypeOther[@name="main"]/XCUIElementTypeTextField'
      btn_calculate = 'Calculate Tip'

      super(txt_value, btn_calculate)
    end

    def validate_tip
      find("$#{@tip}").visible
    end

    def validate_total
      find("$#{@tip + @total}").visible
    end
  end
end
