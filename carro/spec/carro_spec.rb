require_relative 'spec_helper'
# Carro
describe Carro do
  describe '#idade' do
    context 'quando o ano for nulo' do
      it 'retorne 0' do
        carro = Carro.new('Fiat', 'spacio', nil, 'azul')

        expect(carro.idade).to eql(0)
      end
    end

    context 'quando o ano for vazio' do
      it 'retorne 0 se for ""' do
        carro = Carro.new('Fiat', 'spacio', '', 'azul')

        expect(carro.idade).to eql(0)
      end

      it 'retorne 0 se for 1 espaço vazio (" ")' do
        carro = Carro.new('Fiat', 'spacio', ' ', 'azul')

        expect(carro.idade).to eql(0)
      end

      it 'retorne 0 se forem 2 espaços vazios ("  ")' do
        carro = Carro.new('Fiat', 'spacio', '  ', 'azul')

        expect(carro.idade).to eql(0)
      end

      it 'retorne 0 se forem 3 espaços vazios ("   ")' do
        carro = Carro.new('Fiat', 'spacio', '   ', 'azul')

        expect(carro.idade).to eql(0)
      end

      it 'retorne 0 se forem 3 espaços vazios ("         ")' do
        carro = Carro.new('Fiat', '', '          ', nil)

        expect(carro.idade).to eql(0)
      end
    end

    context 'quando tiver 5 anos' do
      it 'retorne 5' do
        carro = Carro.new('Fiat', 'spacio', 2011, 'azul')

        expect(carro.idade).to eql(5)
      end
    end
  end

  describe '#dados_veiculo' do
    context 'quando todos os dados estiverem corretos' do
      it 'retorne OK' do
        expectativa = {
          marca:          'Fiat',
          modelo:         'spacio',
          ano:            1983,
          cor:            'azul',
          idade_veiculo:  33
        }

        carro = Carro.new('Fiat', 'spacio', 1983, 'azul')

        expect(carro.dados_veiculo).to eql(expectativa)
        expect(carro.marca).to eql('Fiat')
      end
    end

    context 'quando algum dado estiver faltando' do
      context 'quando não tiver cor' do
        it 'utilize "não informado" quando for nulo' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'spacio',
            ano:            1983,
            cor:            'não informado',
            idade_veiculo:  33
          }

          carro = Carro.new('Fiat', 'spacio', 1983, nil)

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.cor).to eql(nil)
        end

        it 'utilize "não informado" quando for vazio' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'spacio',
            ano:            1983,
            cor:            'não informado',
            idade_veiculo:  33
          }

          carro = Carro.new('Fiat', 'spacio', 1983, '')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.cor).to eql('')
        end

        it 'utilize "não informado" quando for 2 espaços vazios' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'spacio',
            ano:            1983,
            cor:            'não informado',
            idade_veiculo:  33
          }

          carro = Carro.new('Fiat', 'spacio', 1983, '  ')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.cor).to eql('  ')
        end
      end

      context 'quando não tiver o ano' do
        it 'utilize "não informado" quando for nulo' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'spacio',
            ano:            'não informado',
            cor:            'azul',
            idade_veiculo:  0
          }

          carro = Carro.new('Fiat', 'spacio', nil, 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.ano).to eql(nil)
        end

        it 'utilize "não informado" quando for vazio' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'spacio',
            ano:            'não informado',
            cor:            'azul',
            idade_veiculo:  0
          }

          carro = Carro.new('Fiat', 'spacio', '', 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.ano).to eql('')
        end

        it 'utilize "não informado" quando for 2 espaços vazios' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'spacio',
            ano:            'não informado',
            cor:            'azul',
            idade_veiculo:  0
          }

          carro = Carro.new('Fiat', 'spacio', '  ', 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.ano).to eql('  ')
        end
      end

      context 'quando nao tiver modelo' do
        it 'utilize "não informado" quando for nulo' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'não informado',
            ano:            1983,
            cor:            'azul',
            idade_veiculo:  33
          }

          carro = Carro.new('Fiat', nil, 1983, 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.modelo).to eql(nil)
        end

        it 'utilize "não informado" quando for vazio' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'não informado',
            ano:            1983,
            cor:            'azul',
            idade_veiculo:  33
          }

          carro = Carro.new('Fiat', '', 1983, 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.modelo).to eql('')
        end

        it 'utilize "não informado" quando for 2 espaços vazios' do
          expectativa = {
            marca:          'Fiat',
            modelo:         'não informado',
            ano:            1983,
            cor:            'azul',
            idade_veiculo:  33
          }

          carro = Carro.new('Fiat', '  ', 1983, 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.modelo).to eql('  ')
        end
      end

      context 'quando nao tiver marca' do
        it 'utilize "não informado" quando for nulo' do
          expectativa = {
            marca:          'não informado',
            modelo:         'spacio',
            ano:            1983,
            cor:            'azul',
            idade_veiculo:  33
          }

          carro = Carro.new(nil, 'spacio', 1983, 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.marca).to eql(nil)
        end

        it 'utilize "não informado" quando for vazio' do
          expectativa = {
            marca:          'não informado',
            modelo:         'spacio',
            ano:            1983,
            cor:            'azul',
            idade_veiculo:  33
          }

          carro = Carro.new('', 'spacio', 1983, 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.marca).to eql('')
        end

        it 'utilize "não informado" quando for 2 espaços vazios' do
          expectativa = {
            marca:          'não informado',
            modelo:         'spacio',
            ano:            1983,
            cor:            'azul',
            idade_veiculo:  33
          }

          carro = Carro.new('  ', 'spacio', 1983, 'azul')

          expect(carro.dados_veiculo).to eql(expectativa)
          expect(carro.marca).to eql('  ')
        end
      end
    end
  end
end
