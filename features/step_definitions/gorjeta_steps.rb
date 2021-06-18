Dado('estar na home do app') do
  home.estar_na_home
end

Dado('alterar o valor da comissao {int}') do |taxa|
  home.acessar_settings
  settings.alterar_taxa(taxa)
  home.atualizar_taxa(taxa)
end

Quando('a conta for {int}') do |valor|
  home.calcular_comissao(valor)
end

Então('deve ser exibido o valor da gorjeta e total da conta') do
  home.validar_comissao
  aggregate_failures do
    expect(home.validar_gorjeta).to be_truthy
    expect(home.validar_conta).to be_truthy
  end
end
