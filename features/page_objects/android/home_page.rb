require './features/page_objects/home_page'

module Android
  class HomePage < BaseHomePage
    def initialize
      txt_value = '//android.widget.RelativeLayout/android.widget.EditText'
      btn_calculate = 'org.traeg.fastip:id/calcTipButton'
      @txt_tip = 'org.traeg.fastip:id/tipAmtTextView'
      @txt_total = 'org.traeg.fastip:id/totalAmtTextView'

      super(txt_value, btn_calculate)
    end

    def validar_gorjeta
      Appium::Core::Wait.until { !find(@txt_tip).text.eql?('$0.00') }
      find(@txt_tip).text.eql?("$#{'%.2f' % @comissao}")
    end

    def validar_conta
      find(@txt_total).text.eql?("$#{'%.2f' % (@comissao.to_f + @valor)}")
    end
  end
end
