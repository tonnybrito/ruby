# AULA 2
# encoding: utf-8

class Telefone

  attr_accessor :phone, :tipo

  def initialize (p_1, p_tipo)
    @phone = p_1
    @tipo = p_tipo
  end

  def num_phone
    return "(#{@phone.to_s.slice(0..1)})#{@phone.to_s.slice(2..5)}-#{@phone.to_s.slice(6..9)}"
  end

  def residencial?
    return @tipo == 1
  end

  def comercial?
    return @tipo == 2
  end

  def celular?
    return @tipo == 3
  end

  def tipo_fone
    fone = {
      1 => "residencial",
      2 => "comercial",
      3 => "celular"
    }
    return fone[@tipo]
  end
end
