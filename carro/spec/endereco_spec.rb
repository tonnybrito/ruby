require_relative 'spec_helper'
# Endereco
describe Endereco do
  describe '#logradouro' do
    context 'quando o rua for nulo ou vazio' do
      it 'retorne não informado quando rua for nulo' do
        endereco = Endereco.new(tipo_end: 1, rua: nil, num: nil, compl: nil,\
                                bairro: 'Campo Pequeno', cidade: 'Colombo',\
                                estado: 'Paraná', pais: 'Brasil',\
                                cep: 834_065_80)

        expect(endereco.logradouro).to eql('não informado')
      end

      it 'retorne  não informado quando rua for vazio' do
        endereco = Endereco.new(tipo_end: 1, rua: '', num: 139, compl: '',\
                                bairro: 'Campo Pequeno', cidade: 'Colombo',\
                                estado: 'Paraná', pais: 'Brasil',\
                                cep: 834_065_80)

        expect(endereco.logradouro).to eql('não informado')
      end

      it 'retorne  não informado quando rua for 2 espaços vazios ' do
        endereco = Endereco.new(tipo_end: 1, rua: '  ', num: '  ', compl: \
                                'apto: 41', bairro: 'Campo Pequeno', cidade: \
                                'Colombo', estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.logradouro).to eql('não informado')
      end

      context 'quando o numero não for nulo' do
        it 'retorne não informado' do
          endereco = Endereco.new(tipo_end: 1, rua: nil, num: 139, compl: nil, \
                                  bairro: 'Campo Pequeno', cidade: 'Colombo', \
                                  estado: 'Paraná', pais: 'Brasil', \
                                  cep: 834_065_80)

          expect(endereco.logradouro).to eql('não informado')
        end
      end

      context 'quando o complemento não for nulo' do
        it 'retorne não informado' do
          endereco = Endereco.new(tipo_end: 1, rua: '  ', num: nil, compl: \
                                  'Apto 41', bairro: 'Campo Pequeno', cidade: \
                                  'Colombo', estado: 'Paraná', pais: 'Brasil', \
                                  cep: 834_065_80)

          expect(endereco.logradouro).to eql('não informado')
        end
      end
    end

    context 'quando o numero for nulo ou vazio' do
      context 'quando o complemento for vazio ou nulo' do
        it 'retorne apenas o nome da rua quando numero for vazio' do
          endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                  '', compl: '', bairro: \
                                  'Campo Pequeno', cidade: 'Colombo', estado: \
                                  'Paraná', pais: 'Brasil', cep: 834_065_80)

          expect(endereco.logradouro).to eql('Guilherme Rodbard')
        end

        it 'retorne apenas o nome da rua quando numero for nulo' do
          endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                  nil, compl:  '', bairro: \
                                  'Campo Pequeno', cidade: 'Colombo', estado: \
                                  'Paraná', pais: 'Brasil', cep: 834_065_80)

          expect(endereco.logradouro).to eql('Guilherme Rodbard')
        end
      end
    end

    context 'quando o complemento for nulo ou vazio' do
      it 'retorne o nome da rua e numero quando complemento for vazio' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                139, compl: '  ', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.logradouro).to eql('Guilherme Rodbard, 139')
      end

      it 'retorne o nome da rua e numero quando complemento for nulo' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                139, compl: nil, bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.logradouro).to eql('Guilherme Rodbard, 139')
      end
    end

    context 'quando todos os dados forem informados' do
      it 'retorne o endereço completo' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.logradouro).to eql('Guilherme Rodbard, 139 - apto: 41')
      end
    end
  end

  describe '#bairro' do
    context 'quando o bairro for nulo ou vazio' do
      it 'retorne não informado quando rua for nulo' do
        endereco = Endereco.new(tipo_end: 1, rua: nil, num: nil, compl: nil,\
                                bairro: nil, cidade: 'Colombo',\
                                estado: 'Paraná', pais: 'Brasil',\
                                cep: 834_065_80)

        expect(endereco.bairro).to eql('não informado')
      end

      it 'retorne  não informado quando bairro for vazio' do
        endereco = Endereco.new(tipo_end: 1, rua: '', num: 139, compl: '',\
                                bairro: '', cidade: 'Colombo',\
                                estado: 'Paraná', pais: 'Brasil',\
                                cep: 834_065_80)

        expect(endereco.bairro).to eql('não informado')
      end

      it 'retorne  não informado quando bairro for 2 espaços vazios ' do
        endereco = Endereco.new(tipo_end: 1, rua: '  ', num: '  ', compl: \
                                'apto: 41', bairro: '  ', cidade: \
                                'Colombo', estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.bairro).to eql('não informado')
      end
    end

    context 'quando o bairro estiver preenchido' do
      it 'retorne nome do bairro' do
        endereco = Endereco.new(tipo_end: 1, rua: nil, num: 139, compl: nil, \
                                bairro: 'Campo Pequeno', cidade: 'Colombo', \
                                estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.bairro).to eql('Campo Pequeno')
      end
    end
  end

  describe '#localidade' do
    context 'quando o cidade for nulo ou vazio' do
      it 'retorne não informado quando cidade for nulo' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: nil, estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.localidade).to eql('não informado')
      end

      it 'retorne  não informado quando cidade for vazio' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: '', estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.localidade).to eql('não informado')
      end

      it 'retorne  não informado quando cidade for 2 espaços vazios ' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: '  ', estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.localidade).to eql('não informado')
      end
    end

    context 'quando o estado for nulo ou vazio' do
      it 'retorne não informado quando estado for vazio' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                '', compl: '', bairro: 'Campo Pequeno', \
                                cidade: 'Colombo', estado: '', \
                                pais: 'Brasil', cep: 834_065_80)

        expect(endereco.localidade).to eql('não informado')
      end

      it 'retorne não informado quando estado for nulo' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                nil, compl:  '', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                nil, pais: 'Brasil', cep: 834_065_80)

        expect(endereco.localidade).to eql('não informado')
      end
    end

    context 'quando o pais for nulo ou vazio' do
      it 'retorne não informado quando pais for vazio' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                139, compl: '  ', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: '', cep: 834_065_80)

        expect(endereco.localidade).to eql('não informado')
      end

      it 'retorne não informado quando o pais for nulo' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                139, compl: nil, bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: nil, cep: 834_065_80)

        expect(endereco.localidade).to eql('não informado')
      end
    end

    context 'quando todos os dados forem informados' do
      it 'retorne o localidade completa' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.localidade).to eql('Colombo, Paraná, Brasil')
      end
    end
  end

  describe '#cep' do
    context 'se o cep estiver nulo ou vazio ou tiver 2 espaços' do
      it 'retorne não informado se for nulo' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: nil)

        expect(endereco.cep).to eql('não informado')
      end

      it 'retorne não informado se for vazio' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: '')

        expect(endereco.cep).to eql('não informado')
      end

      it 'retorne não informado se for 2 espaços vazios' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: ' ')

        expect(endereco.cep).to eql('não informado')
      end
    end

    context 'se o cep estiver preenchido' do
      it 'retorne numero do CEP' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.cep).to eql('83.406-580')
      end
    end
  end

  describe '#end_completo' do
    context 'se endereço completo for vazio, nulo ou tiver 2 espaços vazios' do
      it 'retorne não informado se endereço completo for nulo' do
        expectativa = {
          logradouro:       'não informado',
          bairro:           'não informado',
          localidade:       'não informado',
          cep:              'não informado'
        }

        endereco = Endereco.new(tipo_end: 1, rua: nil, num: nil, compl: nil, \
                                bairro: nil, cidade: nil, estado: nil, pais: \
                                nil, cep: nil)

        expect(endereco.end_completo).to eql(expectativa)
        expect(endereco.rua).to eql(nil)
        expect(endereco.num).to eql(nil)
        expect(endereco.compl).to eql(nil)
        expect(endereco.cidade).to eql(nil)
        expect(endereco.estado).to eql(nil)
        expect(endereco.pais).to eql(nil)
      end

      it 'retorne não informado se endereço completo for vazio' do
        expectativa = {
          logradouro:       'não informado',
          bairro:           'não informado',
          localidade:       'não informado',
          cep:              'não informado'
        }

        endereco = Endereco.new(tipo_end: 1, rua: '', num: '', compl: '',\
                                bairro: '', cidade: '', estado: '',\
                                pais: '', cep: '')

        expect(endereco.end_completo).to eql(expectativa)
        expect(endereco.rua).to eql('')
        expect(endereco.num).to eql('')
        expect(endereco.compl).to eql('')
        expect(endereco.cidade).to eql('')
        expect(endereco.estado).to eql('')
        expect(endereco.pais).to eql('')
      end

      it 'retorne não informado se endereço completo tiver 2 espaços vazios' do
        expectativa = {
          logradouro:       'não informado',
          bairro:           'não informado',
          localidade:       'não informado',
          cep:              'não informado'
        }

        endereco = Endereco.new(tipo_end: 1, rua: '  ', num: '  ', compl: \
                                '  ', bairro: '  ', cidade: '  ', estado: \
                                '  ', pais: '  ', cep: '  ')

        expect(endereco.end_completo).to eql(expectativa)
        expect(endereco.rua).to eql('  ')
        expect(endereco.num).to eql('  ')
        expect(endereco.compl).to eql('  ')
        expect(endereco.cidade).to eql('  ')
        expect(endereco.estado).to eql('  ')
        expect(endereco.pais).to eql('  ')
      end
    end

    context 'se endereço completo estiver preenchido' do
      it 'retorne endereço completo' do
        expectativa = {
          logradouro:       'Guilherme Rodbard, 139 - apto: 41',
          bairro:           'Campo Pequeno',
          localidade:       'Colombo, Paraná, Brasil',
          cep:              '83.406-580'
        }

        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', num: \
                                139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: 834_065_80)

        expect(endereco.end_completo).to eql(expectativa)
      end
    end
  end

  describe '#tipo_endereco' do
    context 'se tipo de endereco for nulo, vazio, ou tiver 2 espaços vazios' do
      it 'retorne não informado se tipo de endereço for nulo' do
        endereco = Endereco.new(tipo_end: nil, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', \
                                estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.tipo_endereco).to eql('não informado')
      end

      it 'retorne não informado se tipo de endereço for vazio' do
        endereco = Endereco.new(tipo_end: '', rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', \
                                estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.tipo_endereco).to eql('não informado')
      end

      it 'retorne não informado se tipo de endereço tiver 2 espaços vazios' do
        endereco = Endereco.new(tipo_end: '  ', rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', \
                                estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.tipo_endereco).to eql('não informado')
      end
    end

    context 'residencial' do
      it 'retorne residencial se tipo de endereço for 1' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro:  \
                                'Campo Pequeno', cidade: 'Colombo', \
                                estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.tipo_endereco).to eql('residencial')
      end
    end

    context 'comercial' do
      it 'retorne comercial se tipo de endereço for 2' do
        endereco = Endereco.new(tipo_end: 2, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', \
                                estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.tipo_endereco).to eql('comercial')
      end
    end

    context 'correspondencia' do
      it 'retorne correspondencia se tipo de endereço for 3' do
        endereco = Endereco.new(tipo_end: 3, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', \
                                estado: 'Paraná', pais: 'Brasil', \
                                cep: 834_065_80)

        expect(endereco.tipo_endereco).to eql('correspondencia')
      end
    end
  end
end
