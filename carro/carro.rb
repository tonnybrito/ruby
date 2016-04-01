# AULA 01

class Carro
  attr_accessor :marca, :modelo, :ano, :cor

  def initialize(p_marca, p_modelo, p_ano, p_cor)
    @marca = p_marca
    @modelo = p_modelo
    @ano = p_ano
    @cor = p_cor
  end

  def marca
    return "#{@marca}"
  end

  def modelo
    return "#{@modelo}"
  end

  def ano
    return "#{@ano}"
  end

  def cor
    return "#{cor}"
  end

  def idade
    ano_atual = Time.now.strftime("%Y").to_i - @ano

    if ano_atual <= 1
      return "#{ano_atual} ano"
    else
      return "#{ano_atual} anos"
    end
  end

  def dados_veiculo
    carro = {
      :marca     => marca,
      :modelo    => modelo,
      :ano       => ano,
      :cor       => modelo,
      :idade     => idade
    }
  end
end