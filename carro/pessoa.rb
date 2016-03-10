# AULA 02
# Fazer uma classe para representar pessoas.
# O construtor deve receber os seguintes parâmetros e definir aos respectivos atributos da classe:
#   * Primeiro nome
#   * Último nome
#   * Telefone residencial
#   * Telefne comercial
#   * Telefone celular
#   * Data de nascimento
#   * Endereço
#
# A classe deverá possuir métodos para:
#   * Mostrar o nome completo ( Primeiro nome + Último nome)
#   * Mostrar todos os telefones
#   * Calcular a idade da pessoa
#   * Mostrar o endereço da pesss.
# AULA 03
# CHAMAR A CLASSE TELEFONE (telefone.rb) NA CLASSE PESSOA (pessoa.rb)


require 'date'
require 'time'
require './telefone'

class Pessoa < Telefone
  attr_accessor :pri_nome, :ult_nome, :phones, :end_com, :end_res, :data_nasc #atributos

  def initialize(p_nome, u_nome, t_fones, add_res, add_com, dt_nasc) #parametros
    @pri_nome = p_nome
    @ult_nome = u_nome
    @phones = []
    # O bloco t_fones cria o parametro (indice_telefonico), este recebe o metodo incluir_fone, que tem o parametro (novo_numero), este parametro cria um objeto da
    # calsse Telefone, e empurra (push) para o atributo @phones.
    t_fones.each do |indice_telefonico|
      incluir_fone(indice_telefonico)
    end
    @end_com = add_com
    @end_res = add_res
    @data_nasc = dt_nasc  # O atributo recebe valor do parametro
    #atributo    parametro
    #         = (recebe)
  end

  def nome_inteiro
    return "#{@pri_nome} #{@ult_nome}"
  end

  def tels
    lista = phones.map { |telef| (telef.num_phone) }

    return " os telefones do sr. #{pri_nome} #{ult_nome} são: #{lista.join(", ")}"
  end

  def end_resid
    return "O endereço residencial é: #{@end_res}"
  end

  def end_comerc
    return "O endereço comercial é: #{@end_com}"
  end

  def mostre_data_nasc
    return "a data de nascimento é: #{@data_nasc}"
  end

  def calcula_idade
    data = Time.new.to_date.year
    return  data - @data_nasc.year
  end

  # retornar a data de nascimento no formato  ??/??/???? "12/08/1964"
  def data_nascimento
    return @data_nasc.strftime('%d/%m/%Y')
  end
  def dados_pessoais
    return " Nome: #{nome_inteiro} Fone Residencial: #{@phones.res_fone.num_phone}, Fone comercial: #{@phones.com_fone.num_phone}, fone celular: #{@phones.cel_fone.num_phone}, Endereços: Endereço residencial: #{@end_res} Endereço Comercial: #{@end_com} Data de nasc: #{data_nascimento}"
  end

  # metodo incluir_fone usa o parametro novo_numero para criar um objeto da classe telefone.
  # ele empurra (push) o objeto criado para o atributo @phones (que é um array).
  def incluir_fone (novo_numero)
    telefone = Telefone.new(novo_numero)
    @phones.push(telefone)
  end
end





#fones = [4130442099, 4130553734, 4198755876, 4197924292]
#nasc = Date.new(1964, 8, 12)
#pessoa1 = Pessoa.new("Antonio", "Brito", fones, "colombo", "batel", nasc)
