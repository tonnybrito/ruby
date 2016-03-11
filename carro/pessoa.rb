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
# CHAMAR A CLASSE TELEFONE (telefone.rb) NA CLASSE PESSOA (pess
require 'date'
require 'time'
require './telefone'

class Pessoa
  attr_accessor :pri_nome, :ult_nome, :phones, :end_com, :end_res, :data_nasc #atributos

  def initialize(p_nome, u_nome, add_res, add_com, dt_nasc) #parametros
    @pri_nome = p_nome
    @ult_nome = u_nome
    @phones = []
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
    return " Nome: #{nome_inteiro}, #{tels}, Endereços: Endereço residencial: #{@end_res}, Endereço Comercial: #{@end_com}, sua data de nasc: #{data_nascimento}"
  end

  # metodo incluir_fone usa o parametro novo_numero para criar um objeto da classe telefone.
  # ele empurra (push) o objeto criado para o atributo @phones (que é um array).
  def incluir_fone_res (novo_num_res)
    telefone_res = Telefone.new(novo_num_res, 1)
    @phones.push(telefone_res)
  end

  def incluir_fone_com (novo_num_com)
    telefone_com = Telefone.new(novo_num_com, 2)
    @phones.push(telefone_com)
  end

  def incluir_fone_cel (novo_num_cel)
    telefone_cel = Telefone.new(novo_num_cel, 3)
    @phones.push(telefone_cel)
  end
end