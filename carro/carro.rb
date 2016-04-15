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
    return 0 if @ano.to_s.strip.empty?

    Time.now.strftime('%Y').to_i - @ano
  end

  def dados_veiculo
    {
      marca:          veiculo(marca),
      modelo:         veiculo(modelo),
      ano:            veiculo(ano),
      cor:            veiculo(cor),
      idade_veiculo:  idade
    }
  end

  private

  def veiculo(valor)
    valor.to_s.strip.empty? ? 'não informado' : valor
  end
end
