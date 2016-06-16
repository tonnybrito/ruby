 # encoding: UTF-8

# Adivinhe o numero
novo_jogo = "s"

while novo_jogo == "s"

  puts "Adivinhe o numero entre 1 e 100"
  seu_numero = gets.to_i

  pc_numero = Random.rand(99) + 1

  tentativas = 1

  while pc_numero != seu_numero
    if pc_numero > seu_numero
      puts "Voce Errou, o numero é maior que #{seu_numero}"
    else
      puts "Voce Errou, o numero é menor que #{seu_numero}"
    end

    tentativas += 1

    puts "tente novamente"
    seu_numero = gets.to_i
  end

  puts "Parabens voce acertou, o meu numero era #{pc_numero}"
  puts "Você usou #{tentativas} tentativas"

  puts "Quer jogar de novo? (s/n)"

  novo_jogo = gets.chomp
end

puts "Ok, fica para uma proxima vez!"

