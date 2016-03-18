# encoding: utf-8
class Endereco

  attr_accessor :rua, :num, :compl, :bairro, :cidade, :estado, :pais, :cep

  def initialize (p_rua, p_num, p_compl, p_bairr, p_cidade, p_estado, p_pais, p_cep)
    @rua = p_rua
    @num = p_num
    @compl = p_compl
    @bairro = p_bairr
    @cidade = p_cidade
    @estado = p_estado
    @pais = p_pais
    @cep = p_cep
  end

  def logradouro
    return "#{@rua}, #{@num} - #{@compl}"
  end

  def localidade
    return "#{@cidade}, #{@estado}, #{@pais}"
  end

  def cep
    codigo_cep = "#{@cep.to_s.slice(0..1)}.#{@cep.to_s.slice(2..4)}-#{@cep.to_s.slice(5..7)}"
    return "#{codigo_cep}"
  end

  def end_completo
    end_comp = {
      :logradouro => logradouro,
      :bairro     => bairro,
      :localidade => localidade,
      :cep        => cep
    }
    return end_comp
  end
end