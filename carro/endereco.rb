# AULA 3
class Endereco
  attr_accessor :tipo_end, :rua, :num, :compl, :bairro,
                :cidade, :estado, :pais, :cep

  def initialize(options = {})
    @tipo_end   = options [:tipo_end]
    @rua        = options [:rua]
    @num        = options [:num]
    @compl      = options [:compl]
    @bairro     = options [:bairro]
    @cidade     = options [:cidade]
    @estado     = options [:estado]
    @pais       = options [:pais]
    @cep        = options [:cep]
  end

  def logradouro
    return 'não informado' if @rua.to_s.strip.empty?
    lograd = '' << @rua
    lograd << ", #{@num}" unless @num.to_s.strip.empty?
    lograd << " - #{@compl}" unless @compl.to_s.strip.empty?
    lograd
  end

  def bairro
    if @bairro.to_s.strip.empty?
      'não informado'
    else
      "#{@bairro}"
    end
  end

  def localidade
    if  @cidade.to_s.strip.empty? || @estado.to_s.strip.empty? \
        || @pais.to_s.strip.empty?
      'não informado'
    else
      "#{@cidade}, #{@estado}, #{@pais}"
    end
  end

  def cep
    if @cep.to_s.strip.empty?
      'não informado'
    else
      format_cep
    end
  end

  def end_completo
    end_comp = {
      logradouro:       logradouro,
      bairro:           bairro,
      localidade:       localidade,
      cep:              cep
    }
    end_comp
  end

  def tipo_endereco
    endereco = {
      1 => 'residencial',
      2 => 'comercial',
      3 => 'correspondencia'
    }
    endereco[@tipo_end]
  end

  private

  def format_cep
    "#{@cep.to_s.slice(0..1)}.#{@cep.to_s.slice(2..4)}-#{@cep.to_s.slice(5..7)}"
  end
end
