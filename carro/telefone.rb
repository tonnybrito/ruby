# AULA 2
# Telefone
class Telefone
  attr_accessor :phone, :tipo

  def initialize(p_1, p_tipo)
    @phone = p_1
    @tipo = p_tipo
  end

  def num_phone
    fn = @phone.to_s

    return 'não informado' if fn.to_s.strip.empty?

    "(#{fn.slice(0..1)})#{fn.slice(2..5)}-#{fn.slice(6..9)}"
  end

  def residencial?
    return 'não informado' if @tipo.to_s.strip.empty?
    @tipo == 1
  end

  def comercial?
    return 'não informado' if @tipo.to_s.strip.empty?
    @tipo == 2
  end

  def celular?
    return 'não informado' if @tipo.to_s.strip.empty?
    @tipo == 3
  end

  def tipo_fone
    {
      1 => codigo_fone('residencial'),
      2 => codigo_fone('comercial'),
      3 => codigo_fone('celular')
    }
  end

  private

  def codigo_fone(valor)
    valor.to_s.strip.empty? ? 'codigo errado, ou não informado' : valor
  end
end
