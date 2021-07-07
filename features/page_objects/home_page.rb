class BaseHomePage
  def initialize(txt_value, btn_calculate)
    @btn_settings = 'Settings'
    @txt_value = txt_value
    @btn_calculate = btn_calculate
    @total = nil
    @tax = 15
  end

  def home_app
    find(@btn_settings)
  end

  def access_settings
    find(@btn_settings).click
  end

  def update_tax(tax)
    @tax = tax
  end

  def calculate_tip(total)
    @total = total
    txt_value = xpath(@txt_value)
    txt_value.click
    txt_value.send_keys(total)
    find(@btn_calculate).click

    @tip = @total.to_f * @tax.to_f / 100
  end
end
