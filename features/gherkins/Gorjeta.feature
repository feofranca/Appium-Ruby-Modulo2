# encoding: utf-8
# language:pt

@calculo_gorjeta
Funcionalidade: Calculo de gorjeta
  Eu como usuário do app
  Quero calcular a gorjeta 
  Para utilizar no meu trabalho

  Contexto: estar na home do app
  * estar na home do app

  @comissao_padrao
  Esquema do Cenário: Calcular comissão padrão
    Quando a conta for <valor>
    Então deve ser exibido o valor da gorjeta e total da conta

    Exemplos:
      | valor |
      |  10   | 
      |  1    |
      | 3500  |

@comissao_alterada
  Esquema do Cenário: Calcular comissão padrão
    Dado alterar o valor da comissao <taxa>
    Quando a conta for <valor>
    Então deve ser exibido o valor da gorjeta e total da conta

    Exemplos:
      | taxa | valor |
      |  10  |  10   | 
      |  25  |  3000 |
      |  50  |  50   |
      |  90  |  250  |
