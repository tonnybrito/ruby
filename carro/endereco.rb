# encoding: utf-8
class Endereco

  attr_accessor  :tipo_end, :rua, :num, :compl, :bairro, :cidade, :estado, :pais, :cep

  def initialize (end_tipo, p_rua, p_num, p_compl, p_bairr, p_cidade, p_estado, p_pais, p_cep)
    @tipo_end = end_tipo
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
    lograd  = "#{@rua}"

    if @num != " "and @num != nil
      lograd << ", #{@num}"
    end

    if @compl != " "  and @compl != nil
      lograd << " - #{@compl}"
    end

    return lograd
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
      :logradouro       => logradouro,
      :bairro           => bairro,
      :localidade       => localidade,
      :cep              => cep
    }
    return end_comp
  end

  def tipo_endereco
    endereco = {
      1 => "residencial",
      2 => "comercial",
      3 => "correspondencia"
    }
    return endereco[@tipo_end]
  end
end

=begin

require './endereco'

endereco1 = Endereco.new( 1, "rua Guilherme Rodbard", 139, "Apto: 41", "Campo Pequeno", "Colombo", "Paraná", "Brasil", 83406580)
endereco2 = Endereco.new( 2, "rua Buenos Aires", 444, "sala 65", "Batel", "Curitiba", "Paraná", "Brasil", 80250070)
endereco3 = Endereco.new( 3, "caixa postal 10", " ", " ", " ", "Curitiba", "Paraná", "Brasil", 80011970)
endereco4 = Endereco.new( 3, "rua Guilherme Rodbard", 139, "Apto: 41", "Campo Pequeno", "Colombo", "Paraná", "Brasil", 83406580)
endereco5 = Endereco.new( 2, "rua Jucelino Kubitschek de Oliveira", 3250, nil, "Cidade Industrial", "Curitiba", "Paraná", "Brasil", 82345678)
endereco6 = Endereco.new( 3, "caixa postal 10", nil, nil, nil, "Curitiba", "Paraná", "Brasil", 80011970)
endereco7 = Endereco.new( 3, "caixa postal 10", "", "", "", "Curitiba", "Paraná", "Brasil", 80011970)
endereco8 = Endereco.new( 3, "caixa postal 10", nil, " ", "", "Curitiba", "Paraná", "Brasil", 80011970)
endereco9 = Endereco.new( 3, "caixa postal 10", "  ", "", "", "Curitiba", "Paraná", "Brasil", 80011970)

=end

