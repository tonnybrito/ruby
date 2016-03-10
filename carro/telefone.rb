# encoding: utf-8

# Fazer uma classe Telefone
# Esta classe deve receber um número inteiro 4130442099 no construtor
# Esta classe deve possuir um método para exibir o telefone no formato (41)3044-20

class Telefone # Telefone é uma classe que foi definido com o modulo "class" (class é um repositorio de metodos)

  attr_accessor :phone, :tipo # :phone é um atributo da classe Telefone

                   #recebe
  def initialize (p_1, p_tipo)
    # O atributo recebe valor do parametrotipo
    @phone = p_1
    @tipo = p_tipo
  end

  def num_phone # definindo o metodo (num_phone) - este devará ao ser chamado responder com os numeros de telefone FIXO e CELULAR atraves das variantes  tel_1 e tel_2
    return "(#{@phone.to_s.slice(0..1)})#{@phone.to_s.slice(2..5)}-#{@phone.to_s.slice(6..9)}"
  end

  def celular? # definindo o metodo = (celular?) - ao ser chamado responderá pelas variantes  tel_1 e tel_2  se é falso ou verdadeiro o numero do celular
    if @phone.to_s.slice(2).to_i >= 7 #usando o slice() - informando o numero 2 solicito ao parametro que identifique se o 3º digito é = ou maior que 7
      return true
    else
      return false #"O numero #{num_phone} é um telefone FIXO"
    end
  end

  def tipo_fone
    fone = {1 => "residencial", 2 => "comercial", 3 => "celular"}
    return fone[@tipo]
  end
end
