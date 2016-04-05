# AULA 2
# encoding: utf-8
# telefone
class Telefone
  attr_accessor :phone, :tipo

  def initialize(p_1, p_tipo)
    @phone = p_1
    @tipo = p_tipo
  end

  def num_phone
    num_phone = ''
    num_phone << "(#{@phone.to_s.slice(0..1)})"
    num_phone << "#{@phone.to_s.slice(2..5)}"
    num_phone << "-#{@phone.to_s.slice(6..9)}"
  end

  def residencial?
    @tipo == 1
  end

  def comercial?
    @tipo == 2
  end

  def celular?
    @tipo == 3
  end

  def tipo_fone
    {
      1 => 'residencial',
      2 => 'comercial',
      3 => 'celular'
    }
  end
end
