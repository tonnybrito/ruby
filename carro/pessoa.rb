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

=begin
    def method_name (var1=value1, var2=value2)
       expr..
    end
=end


require 'date'
require 'Time'

class Pessoa
  attr_accessor :pri_nome, :ult_nome, :tel_res, :tel_com, :tel_cel, :end_com, :end_res, :data_nasc #atributos

  def initialize(p_nome, u_nome, fon_res, fon_com, fon_cel, add_com, add_res, dt_nasc) #parametros
    @pri_nome = p_nome
    @ult_nome = u_nome
    @tel_res = fon_res
    @tel_com = fon_com
    @tel_cel = fon_cel
    @end_com = add_com
    @end_res = add_res
    @data_nasc = dt_nasc  # O atributo recebe valor do parametro
    #atributo    parametro
    #         = (recebe)
  end


  def nome_inteiro
    return "#{@pri_nome}" + " #{@ult_nome}"
  end

  def fone_resid
    return "O telefone residencial é: #{@tel_res}"
  end

  def fone_comerc
    return "O telefone comercial é: #{@tel_com}"
  end

  def fone_cel
    return "O telefone celular é: #{@tel_cel}"
  end

  def end_resid
    return "O endereço residencial é: #{@end_resid}"
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

  def data_nascimento # retornar a data de nascimento no formato  ??/??/???? "12/08/1964"
    return @data_nasc.strftime('%d/%m/%Y')
  end

  def dados_pessoais
    return " Nome: #{@pri_nome } #{@ult_nome} Fones: Res: #{@tel_res} Com: #{@tel_com} Cel: #{@tel_cel} Endereços: Endereço res: #@end_resid} Endereço Come: #{@end_com} Data de nasc: #{data_nascimento}"
  end
end

nasc = Date.new(1964, 8, 12)
pessoa1 = Pessoa.new("Antonio", "Brito", 30553734, 30442099, 97924292, "colombo", "batel", nasc) # a variavel é passada como parametro para o construtor "metodo initialize"

#
# Chama somente o ano ---------------- data = Time.new.to_date.year
# Retorna o calculo da idade --------- return  data - @data_nasc.year
# retorna a data como dia/mes/ano ---- return @data_nasc.strftime('%d/%m/%Y')

