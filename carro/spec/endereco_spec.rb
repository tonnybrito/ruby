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
      it 'retorne CEP não informado se for nulo' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: nil)

        expect(endereco.cep).to eql('não informado')
      end

      it 'retorne CEP não informado se for vazio' do
        endereco = Endereco.new(tipo_end: 1, rua: 'Guilherme Rodbard', \
                                num: 139, compl: 'apto: 41', bairro: \
                                'Campo Pequeno', cidade: 'Colombo', estado: \
                                'Paraná', pais: 'Brasil', cep: '')

        expect(endereco.cep).to eql('não informado')
      end

      it 'retorne CEP não informado se for 2 espaços vazios' do
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
end
