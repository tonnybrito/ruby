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
    lograd = ''
    lograd << @rua.to_s
    lograd << ", #{@num}" unless @num.to_s.strip.empty?
    lograd << " - #{@compl}" unless @compl.to_s.strip.empty?
  end

  def localidade
    "#{@cidade}, #{@estado}, #{@pais}"
  end

  def cep
    "#{@cep.to_s.slice(0..1)}.#{@cep.to_s.slice(2..4)}-#{@cep.to_s.slice(5..7)}"
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
end
