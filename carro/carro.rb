# Carro
class Carro
  attr_accessor :marca, :modelo, :ano, :cor

  def initialize(p_marca, p_modelo, p_ano, p_cor)
    @marca = p_marca
    @modelo = p_modelo
    @ano = p_ano
    @cor = p_cor
  end

  def idade
    return 0 if @ano != true && @ano.to_s.strip.empty?
    Time.now.strftime('%Y').to_i - @ano
  end

  def dados_veiculo
    {
      marca:          marca,
      modelo:         modelo,
      ano:            ano,
      cor:            modelo,
      idade_veiculo:  idade
    }
  end
end
