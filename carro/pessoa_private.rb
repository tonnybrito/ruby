require './telefone'
require './pessoa'
require './endereco'
# classe Pessoa
class PessoaPrivate
  private

  def fone_ident(ident)
    lista = fone_array(ident)
    lista.join(', ')
  end

  def fone_array(array)
    fones = phones.select { |f| f.tipo == array }
    fones.map(&:num_phone)
  end

  def incluir_fone(fone, tipo)
    item = Telefone.new(fone, tipo)
    @phones.push(item)
  end

  def enderecos_completos(tipo)
    lista = enderecos.select { |list| list.tipo_end == tipo }
    lista.map(&:end_completo)
  end

  def incluir_endereco(end_tipo)
    item = Endereco.new(end_tipo)
    @enderecos.push(item)
  end

  def list_end
    {
      residencial:   end_res,
      comercial:     end_com,
      postal:        end_postal
    }
  end

  def list_fones
    {
      residencial:   fone_res,
      comercial:     fone_com,
      celular:       fone_cel
    }
  end
end
