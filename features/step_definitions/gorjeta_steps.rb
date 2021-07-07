Dado('estar na home do app') do
  home.home_app
end

Dado('alterar o valor da comissao {int}') do |taxa|
  home.access_settings
  settings.change_tax(taxa)
  home.update_tax(taxa)
end

Quando('a conta for {int}') do |valor|
  home.calculate_tip(valor)
end

Então('deve ser exibido o valor da gorjeta e total da conta') do
  aggregate_failures do
    expect(home.validate_tip).to be_truthy
    expect(home.validate_total).to be_truthy
  end
end
