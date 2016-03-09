require 'date' # requer a classe Date
require 'time' # requer a classe Time
require_relative 'telefone' #requer a classe Telefone no arquivo telefone.rb
require_relative 'carro'

class AlugaCarro
  attr_accessor :car_brand, :car_model, :car_year, :car_color, :pri_nome, :ult_nome, :tel_res, :tel_com, :tel_cel, :end_com, :end_res, :data_nasc #atributos

  def initialize(p_brand, p_model, p_year, p_color, p_nome, u_nome,u_telres, u_telcom, u_telcel, add_res, add_com, dt_nasc) #parametros
    @car_brand = Carro.new(p_brand)
    @car_model = Carro.new(p_model)
    @car_year = Carro.new(p_year)
    @car_color = Carro.new(p_color)
    @pri_nome = p_nome
    @ult_nome = u_nome
    @tel_res = Telefone.new(u_telres)  # Para chamar os metodos celular? e num_phone da classe Telefone em (telefone.rb), criou-se os atributos :tel_res, :tel_com e
    @tel_com = Telefone.new(u_telcom)  # :tel_cel com os parametros u_telres, u_telcom e u_telcel, que para serem chamados no arquivo (telefone.rb) dependem das
    @tel_cel = Telefone.new(u_telcel)  # dos metodos (fone_res, fone_com e fone_cel da classe Pessoa, estes determinaram uma variavel que recebe o resultado do metodo num_phone)
    @end_com = add_com
    @end_res = add_res
    @data_nasc = dt_nasc  # O atributo recebe valor do parametro
    #atributo    parametro
    #         = (recebe)
  end

  def marca_car
    marca_car = @car_marca.mostra_marca
    return "#{marca_car}"
  end

  def modelo_car
     modelo_car = @car_modelo.mostra_modelo
    return "#{modelo_car}"
  end

  def ano_car
     ano_car = @car_ano.mostra_ano
    return "#{ano_car}"
  end

  def cor_car
     cor_car = @car_cor.mostra_cor
    return "#{cor_car}"
  end
  def nome_inteiro
    return "#{@pri_nome} #{@ult_nome}"
  end

  def fone_res
    res_fone = @tel_res.num_phone  # meu_fone é uma variavel, que recebe o resultado do metodo num_phone do atributo tel_res
    return "O telefone residencial é: #{res_fone}"
  end

  def fone_com
     com_fone = @tel_com.num_phone
    return "O telefone comercial é: #{com_fone}"
  end

  def fone_cel
     cel_fone = @tel_cel.num_phone
    return "O telefone celular é: #{cel_fone}"
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

  def data_nascimento # retornar a data de nascimento no formato  ??/??/???? "12/08/1964"
    return @data_nasc.strftime('%d/%m/%Y')
  end

  def dados_pessoais
    return " Nome: #{nome_inteiro} Fone Residencial: #{@tel_res.num_phone}, Fone comercial: #{@tel_com.num_phone}, fone celular: #{@tel_cel.num_phone}, Endereços: Endereço residencial: #{@end_res} Endereço Comercial: #{@end_com} Data de nasc: #{data_nascimento}"
  end
end

nasc = Date.new(1964, 8, 12)
pessoa1 = AlugaCarro.new("Fiat", "147 Spacio", 1983, "azul", "Antonio", "Brito", 4130553734, 4130442099, 4198755876, "colombo", "batel", nasc) # a variavel é passada como parametro para o construtor "metodo initialize"
#
# Chama somente o ano ---------------- data = Time.new.to_date.year
# Retorna o calculo da idade --------- return  data - @data_nasc.year
# retorna a data como dia/mes/ano ---- return @data_nasc.strftime('%d/%m/%Y')


#COMO CRIAR UM OBJETO DA CLASSE TELEFONE?
#R: CHAMANDO O CONSTRUTOR DA CLASSE -- EXP: tel1 = Telefone.new(??????????)
# Metodo .new é um construtor