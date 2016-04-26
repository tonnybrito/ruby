require_relative 'spec_helper'
# Pessoa
describe Pessoa do
  describe '#nome_inteiro' do
    context 'primerio nome' do
      context 'primeiro nome nulo, vazio, ou com dois espaços vazios' do
        it 'retorne não informado se primeiro nome for nil' do
          pessoa = Pessoa.new(nil, '', '')

          expect(pessoa.nome_inteiro).to eql('não informado')
        end

        it 'retorne não informado se primeiro nome for vazio' do
          pessoa = Pessoa.new('', '', '')

          expect(pessoa.nome_inteiro).to eql('não informado')
        end

        it 'retorne não informado se primeiro nome for 2 espaços vazios' do
          pessoa = Pessoa.new('  ', '', '')

          expect(pessoa.nome_inteiro).to eql('não informado')
        end
      end
      context 'primeiro nome preenchido' do
        it 'retorne primeiro nome se estiver preenchido' do
          pessoa = Pessoa.new('Antonio', '', '')

          expect(pessoa.nome_inteiro).to eql('Antonio ')
        end
      end
    end

    context 'sobrenome' do
      context 'sobrenome nulo, vazio, ou com dois espaços vazios' do
        it 'returne não informado se sobrenome for nil' do
          pessoa = Pessoa.new('', nil, nil)

          expect(pessoa.nome_inteiro).to eql('não informado')
        end

        it 'returne não informado se sobrenome for vazio' do
          pessoa = Pessoa.new('', '', nil)

          expect(pessoa.nome_inteiro).to eql('não informado')
        end

        it 'returne não informado se sobrenome for 2 espaços vazios' do
          pessoa = Pessoa.new('', '  ', nil)

          expect(pessoa.nome_inteiro).to eql('não informado')
        end
      end

      context 'sobrenome preenchido' do
        it 'retorne sobrenome se estiver preenchido' do
          pessoa = Pessoa.new('', 'Brito', '')

          expect(pessoa.nome_inteiro).to eql(' Brito')
        end
      end
    end

    context 'nome completo preenchido' do
      it 'retorne nome completo se estiver preenchido' do
        pessoa = Pessoa.new('Antonio', 'Brito', '')

        expect(pessoa.nome_inteiro).to eql('Antonio Brito')
      end
    end
  end

  describe '#tels' do
    context 'se tels for nulo, vazio, ou com 2 espaços vazios' do
      it 'retorne não informado se telefone for nil' do
        pessoa = Pessoa.new('Antonio', 'Brito', '')
        pessoa.incluir_fone_res(nil)

        expect(pessoa.tels).to eql('não informado')
      end

      it 'retorne não informado se telefone for vazio' do
        pessoa = Pessoa.new('Antonio', 'Brito', '')
        pessoa.incluir_fone_res('')

        expect(pessoa.tels).to eql('não informado')
      end

      it 'retorne não informado se telefone for com 2 espaços vazios' do
        pessoa = Pessoa.new('Antonio', 'Brito', '')
        pessoa.incluir_fone_res(' ')

        expect(pessoa.tels).to eql('não informado')
      end
    end

    context 'se tels for preenchido' do
      it 'retorne numero do telefone' do
        pessoa = Pessoa.new('Antonio', 'Brito', '')
        pessoa.incluir_fone_res(419_875_587_6)

        expect(pessoa.tels).to eql('(41)9875-5876')
      end
    end
  end

  describe '#calcula_idade' do
    context 'se calcula idade for nulo, vazio, ou tiver 2 espaços vazios' do
      it 'retorne não informado se calcula idade for nil' do
        Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', nil)

        expect(pessoa.calcula_idade).to eql('não informado')
      end

      it 'retorne não informado se calcula idade for vazio' do
        Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', '')

        expect(pessoa.calcula_idade).to eql('não informado')
      end

      it 'retorne não informado se calcula idade for 2 espaços vazios' do
        Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', '  ')

        expect(pessoa.calcula_idade).to eql('não informado')
      end
    end

    context 'se calcula idade for preenchido' do
      it 'retorne a idade' do
        nasc = Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', nasc)

        expect(pessoa.calcula_idade).to eql(52)
      end
    end
  end

  describe '#data_nascimento' do
    context 'se data de nascimento for nulo, vazio, com dois espaços vazios' do
      it 'retorne não informado se data de nascimento for nulo' do
        Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', nil)

        expect(pessoa.data_nascimento).to eql('não informado')
      end

      it 'retorne não informado se data de nascimento for vazio' do
        Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', '')

        expect(pessoa.data_nascimento).to eql('não informado')
      end

      it 'retorne não informado se data de nascimento for 2 espaços vazios' do
        Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', '  ')

        expect(pessoa.data_nascimento).to eql('não informado')
      end
    end

    context 'se data de nascimento for preenchido' do
      it 'retorne data de nascimento' do
        nasc = Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', nasc)

        expect(pessoa.data_nascimento).to eql('12/08/1964')
      end
    end
  end

  describe '#dados_pessoais' do
    context 'se dados pessoais estiverem preenchidos' do
      it 'retorne dados pessoais' do
        expectativa = {
          nome:               'Antonio Brito',
          data_nascimento:    '12/08/1964',
          idade:              52,
          list_end:           {
            residencial:      [{
              logradouro:     'rua Guilherme Rodbard, 139 - Apto: 41',
              bairro:         'Campo Pequeno',
              localidade:     'Colombo, Paraná, Brasil',
              cep:            '83.406-580' }],
            comercial:        [{
              logradouro:     'rua Buenos Aires, 444 - sala 65',
              bairro:         'Batel',
              localidade:     'Curitiba, Paraná, Brasil',
              cep:            '80.250-070' }],
            postal:           [{
              logradouro:     'caixa postal 10',
              bairro:         'não informado',
              localidade:     'Curitiba, Paraná, Brasil',
              cep:            '80.011-970' }]
          },
          list_fones:         {
            residencial:      ['(41)3055-3734'],
            comercial:        ['(41)3044-2099'],
            celular:          ['(41)9875-5876', '(41)9792-4292']
          }
        }

        nasc = Date.new(1964, 8, 12)
        pessoa = Pessoa.new('Antonio', 'Brito', nasc)
        pessoa.incluir_end_res(tipo_end: 1, rua: 'rua Guilherme Rodbard', \
                               num: 139, compl: 'Apto: 41', bairro: \
                               'Campo Pequeno', cidade: 'Colombo', estado: \
                               'Paraná', pais: 'Brasil', cep: 834_065_80)
        pessoa.incluir_end_com(tipo_end: 2, rua: 'rua Buenos Aires', \
                               num: 444, compl: 'sala 65', bairro: \
                               'Batel', cidade: 'Curitiba', estado: \
                               'Paraná', pais: 'Brasil', cep: 802_500_70)
        pessoa.incluir_end_postal(tipo_end: 3, rua: 'caixa postal 10', num: \
                                  '', compl: '', bairro: '', cidade: \
                                  'Curitiba', estado: 'Paraná', pais: 'Brasil',\
                                  cep: 800_119_70)
        pessoa.incluir_fone_res(413_055_373_4)
        pessoa.incluir_fone_com(413_044_209_9)
        pessoa.incluir_fone_cel(419_875_587_6)
        pessoa.incluir_fone_cel(419_792_429_2)

        expect(pessoa.dados_pessoais).to eql(expectativa)
      end
    end
  end
end
