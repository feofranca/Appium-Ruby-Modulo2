class BaseSettingsPage
  def initialize(txt_value, btn_save)
    @txt_value = txt_value
    @btn_save = btn_save
  end

  def alterar_taxa(taxa)
    txt_value = xpath(@txt_value)
    txt_value.click
    txt_value.clear
    txt_value.send_keys(taxa)
    find(@btn_save).click
  end
end
