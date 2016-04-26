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
    context 'se codigo residencial for nulo, vazio, ou for 2 espaços vazios' do
      it 'retorne não informado se codigo do telefone residencial for nulo' do
        telefone = Telefone.new(413_055_733_4, nil)

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se codigo do telefone residencial for vazio' do
        telefone = Telefone.new(413_055_733_4, '')

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se codigo residencial for 2 espaços vazios' do
        telefone = Telefone.new(413_055_733_4, '  ')

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
    context 'se codigo comercial for nulo, vazio, ou for 2 espaços vazios' do
      it 'retorne não informado se o codigo do telefone comercial for nulo' do
        telefone = Telefone.new(413_055_733_4, nil)

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo do telefone comercial for vazio' do
        telefone = Telefone.new(413_044_209_9, '')

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo comercial for 2 espaços vazios' do
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
    context 'se codigo celular for nulo, vazio, ou for 2 espaços vazios' do
      it 'retorne não informado se o codigo do celular for nulo' do
        telefone = Telefone.new(413_055_733_4, nil)

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo do celular for vazio' do
        telefone = Telefone.new(413_044_209_9, '')

        expect(telefone.residencial?).to eql('não informado')
      end

      it 'retorne não informado se o codigo celular for 2 espaços vazios' do
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

  describe '#tipo_fone' do
    context 'retorne telefone Residencial, Comercial, Correspondencia' do
      context 'fone residencial' do
        it 'retorne não informado para telefone residencial nulo' do
          telefone = Telefone.new(413_055_733_4, nil)

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne não informado para telefone residencial vazio' do
          telefone = Telefone.new(413_055_733_4, '')

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne não informado p/ tel. residencial c/ dois espaços vazios' do
          telefone = Telefone.new(413_055_733_4, '  ')

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne residencial para tipo de telefone residencial informado' do
          telefone = Telefone.new(413_055_733_4, 1)

          expect(telefone.tipo_fone).to eql('residencial')
        end
      end

      context 'fone comercial' do
        it 'retorne não informado para telefone comercial nulo' do
          telefone = Telefone.new(413_044_209_9, nil)

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne não informado para telefone comercial vazio' do
          telefone = Telefone.new(413_044_209_9, '')

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne não informado p/ tel. comercial c/ dois espaços vazios' do
          telefone = Telefone.new(413_044_209_9, '  ')

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne comercial para tipo de telefone comercial informado' do
          telefone = Telefone.new(413_044_209_9, 2)

          expect(telefone.tipo_fone).to eql('comercial')
        end
      end

      context 'fone celular' do
        it 'retorne não informado para telefone celular nulo' do
          telefone = Telefone.new(419_875_587_6, nil)

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne não informado para telefone celular vazio' do
          telefone = Telefone.new(419_875_587_6, '')

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne não informado p/ tel. celular c/ dois espaços vazios' do
          telefone = Telefone.new(419_875_587_6, '  ')

          expect(telefone.tipo_fone).to eql('não informado')
        end

        it 'retorne celular para tipo de telefone celular informado' do
          telefone = Telefone.new(419_875_587_6, 3)

          expect(telefone.tipo_fone).to eql('celular')
        end
      end
    end
  end
end
