#=================================================================================
#USANDO .MAP
=begin
lista = phones.map { |tele| tele.num_phone }
 => ["(41)3044-2099", "(41)3055-3734", "(41)9875-5876", "(41)9792-4292"]
 phones
 => [#<Telefone:0x0000000257ed68 @phone=4130442099>, #<Telefone:0x0000000257ed18 @phone=4130553734>, #<Telefone:0x0000000257ecf0 @phone=4198755876>, #<Telefone:0x0000000257ecc8 @phone=4197924292>]
lista
 => ["(41)3044-2099", "(41)3055-3734", "(41)9875-5876", "(41)9792-4292"]
lista.class
 => Array
lista_telef = lista.join(", ")
 => "(41)3044-2099, (41)3055-3734, (41)9875-5876, (41)9792-4292"
lista_telef
 => "(41)3044-2099, (41)3055-3734, (41)9875-5876, (41)9792-4292"
lista_telef.class
 => String
 ====================================================================================
=end



nasc = Date.new(1964, 8, 12)
pessoa = Pessoa.new("Antonio", "Brito", "Colombo", "Batel", nasc)
 pessoa.incluir_fone_res(4130553734)
 pessoa.incluir_fone_com(4130442099)
 pessoa.incluir_fone_cel(4198755876)
 pessoa.incluir_fone_cel(4197924292)



 tels.select {|f| f.celular? }



==================================================================================================
#USANDO .EACH
#criando o array
meu_array = []

#armazenando objetos na array
meu_array.push(objeto)
# RESPOSTA
#=> [objeto]

# Armazenando objetos diretamente dentro de uma classe (neste caso a classe "Telefone")
meu_array.push(Telefone.new(objeto))
# RESPOSTA
#=> [#<Telefone:0x00000000ff4740 @phone=objeto>

# Iterando (percorrendo) um array para descobrir a classe dos objetos
meu_array.each do |fone|
puts fone.class
puts "=========================="
end
#RESPOSTA
#<Telefone:0x00000001afdd08>
#Telefone
#==========================
#<Telefone:0x00000001b179b0>
#Telefone
#==========================
#<Telefone:0x00000001bf1f98>
#Telefone
#==========================
#<Telefone:0x000000019f9628>
#Telefone
#==========================
#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]

#Iterando "percorrendo" o array com objetos da classe Telefone, e chamando o metodo num_phone da classe Telefone para cada objeto do array.
meu_array.each do |fone|
puts fone.num_phone
puts "==============================="
end
# RESPOSTA
#(41)3044-2099
#===============================
#(41)9875-5876
#===============================
#(41)3055-3734
#===============================
#(41)9792-4292
#===============================
#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]

#criando um novo array
novo_array = []
# RESPOSTA
# []

#Iterando array meu_array e #empurrando" com o metodo push os objetos no formato "metodo num_fone" para o novo array (novo_array)
meu_array.each do |fone|
novo_array.push(fone.num_phone)
end
#RESPOSTA
#<Telefone:0x00000001afdd08 @phone=4130442099>, #<Telefone:0x00000001b179b0 @phone=4198755876>, #<Telefone:0x00000001bf1f98 @phone=4130553734>, #<Telefone:0x000000019f9628 @phone=4197924292>]

# Chamando o novo_array
novo_array
# RESPOSTA
# ["(41)3044-2099", "(41)9875-5876", "(41)3055-3734", "(41)9792-4292"]

# Identificando a classe do novo_array
novo_array.class
# RESPOSTA
#=> Array

# Usando o metodo join para transformar o array numa string (PARECE QUE NAO DEU CERTO)
novo_array.join(", ")
# RESPOSTA
#=> "(41)3044-2099, (41)9875-5876, (41)3055-3734, (41)9792-4292"

# Criando uma variavel para armazenar a string do novo_array.join(", ")
lista_formatada = novo_array.join(", ")
#RESPOSTA
#=> #=> "(41)3044-2099, (41)9875-5876, (41)3055-3734, (41)9792-4292"

lista_formatada.class
#RESPOSTA
#=> String

#======================================================================


fone1 = Telefone.new(4130553734, 1)
fone2 = Telefone.new(4130442099, 2)
fone3 = Telefone.new(4197924292, 3)






nasc = Date.new(1964, 8, 12)

fones = [4199559955, 4168755876, 4198724292, 4130303030]
pessoa1 = Pessoa.new("Antonio", "Brito", fones, "colombo", "batel", nasc) # a variavel é passada como parametro para o construtor "metodo initialize"


#pessoa1.phones.each do |telefones| # pessoa1 pode acessar classe Telefone, @phones está nomeado como ARRAY, este recebe os numeros inteiros da variavel fones que tambem
#  puts telefones.num_phone           # é um ARRAY, fones 'em pessoa1' empurra para a variavel tel1 "no construtores" que esta dentro do bloco.
#end


# Quem pode chamar o Telefone???
  # R: @phones ( ele é chamado no construtor pelo pessoa1 -- " o array fones é 'empurrado' para o construtor que lê o initialize na 3ª posição t_fones",
  #    e independentemente do nome em pessoa1, a 3ª casa de pessoa1 será lida, confrontando a mesma posição e determinando o valor de fones para t_fones)

# Chama somente o ano ---------------- data = Time.new.to_date.year
# Retorna o calculo da idade --------- return  data - @data_nasc.year
# retorna a data como dia/mes/ano ---- return @data_nasc.strftime('%d/%m/%Y')


#COMO CRIAR UM OBJETO DA CLASSE TELEFONE?
#R: CHAMANDO O CONSTRUTOR DA CLASSE -- EXP: tel1 = Telefone.new(??????????)
# Metodo .new é um construtor

=begin

2.1.2 :099 > pessoa1.phones
 => [#<Telefone:0x000000010407d0 @phone=4199559955>, #<Telefone:0x000000010407a8 @phone=4168755876>, #<Telefone:0x00000001040780 @phone=4198724292>, #<Telefone:0x00000001040758 @phone=4130303030>]
2.1.2 :100 > pessoa1.phones.each
 => #<Enumerator: [#<Telefone:0x000000010407d0 @phone=4199559955>, #<Telefone:0x000000010407a8 @phone=4168755876>, #<Telefone:0x00000001040780 @phone=4198724292>, #<Telefone:0x00000001040758 @phone=4130303030>]:each>
2.1.2 :101 > pessoa1.phones.each do |telefone|
2.1.2 :102 >     puts telefone.class
2.1.2 :103?>   end
Telefone
Telefone
Telefone
Telefone
 => [#<Telefone:0x000000010407d0 @phone=4199559955>, #<Telefone:0x000000010407a8 @phone=4168755876>, #<Telefone:0x00000001040780 @phone=4198724292>, #<Telefone:0x00000001040758 @phone=4130303030>]
2.1.2 :104 > pessoa1.phones.each do |telefone|
2.1.2 :105 >     puts telefone.num_phone
2.1.2 :106?>   end
(41)9955-9955
(41)6875-5876
(41)9872-4292
(41)3030-3030
 => [#<Telefone:0x000000010407d0 @phone=4199559955>, #<Telefone:0x000000010407a8 @phone=4168755876>, #<Telefone:0x00000001040780 @phone=4198724292>, #<Telefone:0x00000001040758 @phone=4130303030>]
2.1.2 :107 >


end