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


   #if (@num != " ") and (@num != nil) and (@num.to_s.strip != "")
    if @num.to_s.strip != ""
      lograd << ", #{@num}"
    end

    if @compl.to_s.strip != ""
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

  if @num != @compl or @compl == false
      lograd << ", #{@num}"
    end

    if @compl != @num and compl != nil
      lograd << " - #{@compl}"
    end

    -------------------------------------------------

    if @num != " " and @num != nil
      lograd << ", #{@num}"
    end

    if @compl != " " and @compl == false and @compl != nil
      lograd << " - #{@compl}"
    end


=end