class BaseHomePage
  def initialize(txt_value, btn_calculate)
    @btn_settings = 'Settings'
    @txt_value = txt_value
    @btn_calculate = btn_calculate
    @valor = nil
    @taxa = 15
  end

  def estar_na_home
    find(@btn_settings)
  end

  def acessar_settings
    find(@btn_settings).click
  end

  def atualizar_taxa(taxa)
    @taxa = taxa
  end

  def calcular_comissao(valor)
    @valor = valor
    txt_value = xpath(@txt_value)
    txt_value.click
    txt_value.send_keys(valor)
    find(@btn_calculate).click
  end

  def validar_comissao
    @comissao = @valor.to_f * @taxa.to_f / 100
  end
end
