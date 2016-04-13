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
end
