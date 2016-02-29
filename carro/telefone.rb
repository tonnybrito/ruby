# Fazer uma classe Telefone
# Esta classe deve receber um número inteiro 4130442099 no construtor
# Esta classe deve possuir um método para exibir o telefone no formato (41)3044-2099
 encoding: utf-8



class Telefone # Telefone é uma classe que foi definido com o modulo "class" (class é um repositorio de metodos)

  attr_accessor :phone # :phone é um atributo da classe Telefone


  def initialize (p_1)
    @phone = p_1# O atributo recebe valor do parametro

  end

  def num_phone # definindo o metodo (num_phone) - este devará ao ser chamado responder com os numeros de telefone FIXO e CELULAR atraves das variantes  tel_1 e tel_2
    if @phone == @phone #usando o slice solicito 3 consultas, a 1ª identifica e imprime os 2 primeiros digitos do fone, a 2ª os 4 digitos seguintes, 3ª os ult. 4 digitos
      return " (#{@phone.to_s.slice(0..1)})#{@phone.to_s.slice(2..5)}-#{@phone.to_s.slice(6..9)}"
    else
      return "" #retornando um elemento vazio
    end
  end

  def celular? # definindo o metodo = (celular?) - ao ser chamado responderá pelas variantes  tel_1 e tel_2  se é falso ou verdadeiro o numero do celular
    if @phone.to_s.slice(2) >= "7" #usando o slice() - informando o numero 2 solicito ao parametro que identifique se o 3º digito é = ou maior que 7
      return true #, "O numero (#{@phone.to_s.slice(0..1)})#{@phone.to_s.slice(2..5)}-#{@phone.to_s.slice(6..9)} é um telefone CELULAR"
    else
     return false, "O numero (#{@phone.to_s.slice(0..1)})#{@phone.to_s.slice(2..5)}-#{@phone.to_s.slice(6..9)} é um telefone FIXO"
   end
  end
end

tel_1 = Telefone.new(4130442099)
tel_2 = Telefone.new(4198755876)


