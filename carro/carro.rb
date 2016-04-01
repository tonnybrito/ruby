# AULA 01

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