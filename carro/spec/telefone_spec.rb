require_relative 'spec_helper'
# Telefone
describe Telefone do
  describe '#num_phone' do
    context 'se numero de telefone for nulo, vazio ou tiver 2 espaços vazios' do
      it 'retorne numero de telefone nao informado se for nulo' do
        telefone = Telefone.new(nil, 1)

        expect(telefone.num_phone).to eql('não informado')
      end

      it 'retorne numero de telefone não informado se for vazio' do
        telefone = Telefone.new('', 1)

        expect(telefone.num_phone).to eql('não informado')
      end

      it 'retorne numero de telefone  não informado se for 2 espaços vazios' do
        telefone = Telefone.new('  ', 1)

        expect(telefone.num_phone).to eql('não informado')
      end
    end

    context 'retornar numero de telefone se campo estiver preenchido' do
      it 'retorne numero do telefone' do
        telefone = Telefone.new(413_055_373_4, 1)

        expect(telefone.num_phone).to eql('(41)3055-3734')
      end
    end
  end

  describe '#residencial?' do
    context 'se tipo de telefone residencial for nulo, vazio, ou tiver 2 espaços vazios' do
      it 'retorne não informado se o codigo de tipo de telefone residencial for nulo' do
        telefone = Telefone.new(413_055_733_4, nil)

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo de tipo de telefone residencial for vazio' do
        telefone = Telefone.new(413_044_209_9, '')

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo de tipo de telefone residencial tiver 2 espaços vazios' do
        telefone = Telefone.new(419_875_587_6, '  ')

        expect(telefone.residencial?).to eql('não informado')
      end
    end

    context 'se tipo de telefone residencial for informado' do
      it 'retorne o codigo de tipo de telefone residencial' do
        telefone = Telefone.new(413_055_733_4, 1)

        expect(telefone.residencial?).to eql(true)
      end
    end
  end

  describe '#comercial?' do
    context 'se codigo de tipo telefone comercial for nulo, vazio, ou tiver 2 espaços vazios' do
      it 'retorne não informado se o codigo de tipo de telefone comercial for nulo' do
        telefone = Telefone.new(413_055_733_4, nil)

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo de tipo de telefone comercial for vazio' do
        telefone = Telefone.new(413_044_209_9, '')

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo de tipo de telefone comercial tiver 2 espaços vazios' do
        telefone = Telefone.new(419_875_587_6, '  ')

        expect(telefone.residencial?).to eql('não informado')
      end
    end

    context 'se tipo de telefone comercial for informado' do
      it 'retorne o codigo de tipo de telefone comercial' do
        telefone = Telefone.new(413_044_209_9, 2)

        expect(telefone.comercial?).to eql(true)
      end
    end
  end

  describe '#celular?' do
    context 'se codigo de tipo de telefone celular for nulo, vazio, ou tiver 2 espaços vazios' do
      it 'retorne não informado se o codigo de tipo de telefone celular for nulo' do
        telefone = Telefone.new(413_055_733_4, nil)

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo de tipo de telefone celular for vazio' do
        telefone = Telefone.new(413_044_209_9, '')

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo de tipo de telefone celular tiver 2 espaços vazios' do
        telefone = Telefone.new(419_875_587_6, '  ')

        expect(telefone.residencial?).to eql('não informado')
      end
    end

    context 'se tipo de telefone celular for informado' do
      it 'retorne o codigo de tipo de telefone celular' do
        telefone = Telefone.new(419_875_587_6, 3)

        expect(telefone.celular?).to eql(true)
      end
    end
  end
end


