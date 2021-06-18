require './features/page_objects/home_page'

module IOS
  class HomePage < BaseHomePage
    def initialize
      txt_value = '//XCUIElementTypeOther[@name="main"]/XCUIElementTypeTextField'
      btn_calculate = 'Calculate Tip'

      super(txt_value, btn_calculate)
    end

    def validar_gorjeta
      find("$#{@comissao}").visible
    end

    def validar_conta
      find("$#{@comissao + @valor}").visible
    end
  end
end
