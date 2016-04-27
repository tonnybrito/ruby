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
    return 'não informado' if @bairro.to_s.strip.empty?

    @bairro
  end

  def localidade
    return 'não informado' if @cidade.to_s.strip.empty? || \
                              @estado.to_s.strip.empty? || \
                              @pais.to_s.strip.empty?

    "#{@cidade}, #{@estado}, #{@pais}"
  end

  def cep
    return 'não informado' if @cep.to_s.strip.empty?

    "#{@cep.to_s.slice(0..1)}.#{@cep.to_s.slice(2..4)}-#{@cep.to_s.slice(5..7)}"
  end

  def end_completo
    end_comp = {
      logradouro:       end_complet(logradouro),
      bairro:           end_complet(bairro),
      localidade:       end_complet(localidade),
      cep:              end_complet(cep)
    }

    end_comp
  end

  def tipo_endereco
    return 'não informado' if @tipo_end.to_s.strip.empty?

    endereco = {
      1 => 'residencial',
      2 => 'comercial',
      3 => 'correspondencia'
    }

    endereco[@tipo_end]
  end

  private

  def end_complet(valor)
    valor.to_s.strip.empty? ? 'não informado' : valor
  end
end
