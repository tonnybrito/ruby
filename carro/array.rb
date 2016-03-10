#aula 04

# Usar ARRAY para chamar varios parametros de uma variavel

 tipo = [0, "Telefone residencial", "Telefone comercial", "Telefone celular"]
=begin

ARRAY = SIGNIFICADO "ARRANJO" SERVE PARA COMPOR UMA LISTA DE OBJETOS

1) AS POSIÇÕES DA LISTA DE UM ARRAY ATUAM COMO VARIAVEIS
2) OS VALORES DE UM ARRAY COMEÇAM  CONTAR DE 0, OU SEJA SE DENTRO DE UM ARRAY TEM ["ELEMENTO 1", "ELEMENTO 2", "ELEMENTO 3"] E QUIZERMOS PEDIR A
   POSIÇAÕ DO ELEMENTO 2, TEREMOS QUE SOLICITAR NA SOLICITAÇÃO POR [1] QUE SIGNIFICARÁ O SEGUNTO ELEMENTO DO ARRAY
3) VALORES COM SINAL DE NEGATIVO SERVEM PARA QUE O ARRAY SEJA PERCORRIDO DE TRAS PARA A FRENTE SOLICITANDO (0) TEREMOS O "ELEMENTO 1" SE
  SOLICITARMOS (-0) TEREMOS O "ELEMENTO 3"
4) UM ARRAY VAZIO SE DETERMINA COM [] "COLCHETES" SEM NADA DENTRO
5) TENDO DENTRO DOS "COLCHETES" ALGUM OBJETO, ESTE ESTARÁ COM PARAMETROS "ELEMENTOS" - ( X = ["TONNY", 123, "XPTO"] )É UMA ARRAY COM 3 ELEMENTOS.
6) UM ARRAY QUE ARMAZENA DIVERSOS ELEMENTOS PODE SOLICITALOS INDIVIDUALEMNTE COM BASE NO NUMERO DE POSICIONAMENTO DELES, CONSIDERANDO COMEÇAR EM 0
7) O DIVISOR DE ELEMENTOS DENTRO DA ARRAY É A ( , ) VIRGULA, USANDO UM VIRGULA ENTRE OS ELEMENTOS ELA SERÁ IGNORADA.
8) SE UMA ARRAY TEM 4 ELEMENTOS, E CHAMARMOS O 5º ELEMENTO, O RUBY RETORNARÁ A INFORMAÇÃO COMO NIL (NADA) EM PORTUGUES DIZENDO-OS QUE O ELEMENTO ESTA VAZIO
9) PODEMOS ADICIONAR UM ARRAY A OUTRO ARRAY, EXP: VAR = [1, 2, 3] VAR[4] = [5, 6, 7] A RESPOSTA É  [1, 2, 3, nil, [4, 5, 6]]

ALGUNS METODOS DA CLASSE ARRAY
SORT = ORDENA OS VALORES (NUMERICOS)
LENGTH = INFORMA O Nº DE ELEMENTOS DA ARRAY
FIRST = PRIMEIRO ELEMENTO DA ARRAY
LAST = ULTIMO ELEMENTO DA ARRAY

ACESSANDO ELEMENTOS:
arr = [1, 2, 3, 4, 5, 6]    - CRIA A ARRAY COM 6 ELEMENTOS DENTRO DE UMA VARIAVEL CHAMADA "ARR"
arr[2]    #=> 3             - SOLICITA O 3 ELEMENTO DA ARRAY CONSIDERANDO INICIO DA CONTAGEM EM 0 - CONTAGEM 0,1,2 = ELEMENTOS 1,2,3
arr[100]  #=> nil           - RETORNA "NADA" NA POSIÇÃO 100 DO ARRAY, POIS EST COM APENAS 6 ELEMENTOS
arr[-3]   #=> 4             - CONSIDERA CONTAGEM DE TRAS PRA FRENTE NO ARRAY (-3) =E IGUAL A [., ., ., 4, 5, 6] INICIO SERA SEMPRE EM -1
arr[2, 3] #=> [3, 4, 5]     - SOLICITA CONTAGEM DE ELEMENTOS A PARTIR DO NUMERAL ANTES DA VIRGULA [2, 3] = [., ., 3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]  - SOLICITA NUMERAIS ENTRE 1º NUMERO SOLICITADO E ULTIMO NUMERO SOLICITADO CONSIDERANDO 0 COMO BASE INICIAL [1..4] = [2, 3, 4, 5]
arr[1..-3] #=> [2, 3, 4]    - SOLICITA NUMERIAS DE TRAS PRA FRENTE A PARTIR DO NUMERO DE CONTAGEM REGRESSIVA [1..-3] = [., 2, 3, 4, ., .,]

arr.at(2)                   - OUTRA MANEIRA DE CHAMAR O ELEMENTO DO ARRAY É USANDO O METODO ".at" -  arr.at(3) = ELEMENTO DO ARRAY Nº 4

arr.take(4)                 - O METODO TAKE INFORMA O NUMERO DE ELEMENTOS DESCONSIDERANDO INICIAR EM "0", ELE INICIARÉ EM "1" arr.take INFORMARA [1, 2, 3, 4]

arr.drop(3)                 - O METODO DROP INFORMA OS ELEMENTOS QUE FICARAM DE FORA, OU SEJA A PARTIR DO NUMERO SOLICITADO arr.drop(3) INFORMARÁ [4, 5, 6,]

OBTENDO INFORMAÇÕES SOBRE UMA ARRAY:

length - count - size       - INFORMAM O Nº DE ELEMENTOS DA ARRAY  ( exp:  [1, 2, 3, 4, 5, 6] " arr.length = 6 " - " arr.size = 6 " - " arr.count = 6 " )

empty? = vazio              - SOLICITADA A PERGUNTA "EMPTY?", TEREMOS RESPOSTA DE VERDADEIRO OU FALSO, NESTE CASO FALSO, POIS O ARRAY NAO ESTA VAZIO arr.empty? = false

include?                    - PARA SABER SE UM ELEMENTO ESTA NO ARRAY USAMOS INCLUDE - EXP: arr.include?(7) = false  /  arr.include?(4) = true

INCLUINDO ELEMENTOS NUM ARRAY:

push = empurrar, ou <<      - SERVEM PARA INCLUIR UM ELEMENTO NO ARRAY - arr.push(7) OU arr << 7 INCLUIRÁ O 7º ELEMENTO NO ARRAY [1, 2, 3, 4, 5, 6, 7]

unshift                     - ADICIONARÁ AO INICIO DA ARRAY UM NOVO ELEMENTO, EXP: arr.unshift "teste" = ["teste", 1, 2, 3, 4, 5, 6, 7]

insert                      - ADICIONARÁ NO ITEM ESCOLHIDO UM NOVO ELEMENTO, EXP: arr.insert(4, "brito") ["teste", 1, 2, 3, "brito", 4, 5, 6, 7] PODERÁ SER INSERIDO
                              MAIS DE UM ELEMENTO DENTRO DA MESMA SEQUENCIA.

REMOVENDO ITENS DE UM ARRAY:

pop  (ultimo da pilha)      - USANDO POP O ELEMENTO ULTIMO ELEMENTO INSERIDO SERÁ REMOVIDO CONSIDERANDO ORDEM DE ENTRADA, ULTIMO ITEM A SER INSERIDO EXP: arr.pop(2)
                               APAGARA OS 2 ULTIMOS ELEMENTOS A SEREM INSERIDOS ["teste", 1, 2, 3, "brito", 4, 5, 6, 7] - ["teste", 1, 2, 3, "brito", 4, 5]

shift                       - USANDO O SHIFT O ELEMENTO PRIMEIRO ELEMENTO INSERIDO SERÁ REMOVIDO CONSIDERANDO ORDEM DE ENTRADA, PRIMEIRO INSERIDO EXP: arr.pop(2)
                              SERÁ APAGADO OS 2 PRIMEIROS ELEMENTOS A SEREM INSERIDOS ["teste", 1, 2, 3, "brito", 4, 5, 6, 7] - [2, 3, "brito", 4, 5, 6, 7]

delete                      - EXCLUIRÁ UM ELEMENTO ESPECIFICO, EXP: arr.delete(2) ["teste", 1, 3, "brito", 4, 5, 6, 7], APAGOU O ELEMENTO 2 CASO TIVESSE 2 2 SERIAM
                              OS DOIS APAGADOS, ESTA OPÇÃO APAGA TODOS OS ITENS IGUAIS

delete.at                   - EXCLUIRÁ UM ELEMENTO CONSIDERANDO A CONTAGEM INCIANDO DE 0 NO ARRAY, EXP: arr.delete(4)  ["teste", 1, 2, 3, 4, 5, 6, 7] APAGOU O "brito"



















=begin
class TestArray
  attr_accessor :test

  def initialize p_test
    @test = [0, 1, 2]
  end

  def ton; [0]
    return "Tonny"
  end

  def ped; [1]
    return "Pedro"
  end

  def rod; [2]
    return "Rodrigo"
  end

  def fel; [3]
    return "Fellipe"
  end
end

test = TestArray.new(2)

 # "meu nome é Tonny", "meu nome é Pedro", "meu nome é Rodrigo", "meu nome é Fellipe"
=end


=begin
# cria um objeto da classe Array
valores = Array.new

# atribui valores inteiros ao array
valores[0] = 76
valores[1] = 3
valores[2] = 9
valores[3] = 87

# obtém o valor do segundo elemento
valor = valores[1]
=end

=begin
fones = Array.new

tel_res = 4130553734
tel_com = 4130442099
tel_cel = 4168755876

fones = [tel_com, tel_cel, tel_res]

class Pepe

  def falar
    return "estou falando"
  end
end
=end