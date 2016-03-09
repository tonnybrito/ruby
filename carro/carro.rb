# AULA 01

# Fazer uma classe carro.
# Esta classe deverá ter os atributos marca, modelo e ano de fabricação.
# Esta classe deverá ter os metodos para dizer a marca, o modelo e o ano de fabricação no formato:
#  "a marca do carro é ..."
#  "o modelo do carro é ..."
#  "o ano de fabricação do carro é ..."
#
# A classe deverá ter um método para calcular a idade do carro.
# Para calcular a idade do carro, você deverá subtrair o ano atual do ano de fabricação do veículo.

class Carro
  attr_accessor :marca, :modelo, :ano, :cor

  def initialize(p_marca, p_modelo, p_ano, p_cor)
    @marca = p_marca
    @modelo = p_modelo
    @ano = p_ano
    @cor = p_cor
  end

  def mostra_marca
    return "este carro é da marca #{@marca}"
  end

   def mostra_modelo
    return "o modelo deste carro é #{@modelo}"
  end

  def mostra_ano
    return "o ano deste carro é #{@ano}"
  end

  def mostra_cor
    return "a cor deste carro é #{cor}"
  end

  def calcula_idade
    ano_atual = Time.now.strftime("%Y").to_i
    return ano_atual - @ano
  end

  def mostra_carro
    return "O carro é um #{@marca}, modelo: #{@modelo}, ano: #{@ano}, ele é #{@cor}, e tem #{calcula_idade} anos de fabricação"
  end
end

carro1 = Carro.new("Fiat", "147 Spacio", 1983, "azul")
carro2 = Carro.new("Renault", "Sandero", 2015, "vermelho")
carro3 = Carro.new("Ford", "Mustang", 2010, "amarelo")
carro4 = Carro.new("Chevrolet", "Opala", 1977, "preto")
carro5 = Carro.new("WW", "gol", 1998, "azul")




=begin
@ano = 2000

date = Time.now
date = date.strftime("%Y")


def idade_do_carro
       return ("#{date}") - ("#{@ano}")
end
=end