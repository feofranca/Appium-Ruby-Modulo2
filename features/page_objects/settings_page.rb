class BaseSettingsPage
  def initialize(txt_value, btn_save)
    @txt_value = txt_value
    @btn_save = btn_save
  end

  def change_tax(tax)
    txt_value = xpath(@txt_value)
    txt_value.click
    txt_value.clear
    txt_value.send_keys(tax)
    find(@btn_save).click
  end
end
