# AULA 4
# encoding: utf-8

require 'net/http'
require 'date'
require 'time'
require './telefone'
require './endereco'
# Pessoa
class Pessoa
  attr_accessor :pri_nome, :ult_nome, :phones, :enderecos, :data_nasc

  def initialize(p_nome, u_nome, dt_nasc)
    @pri_nome = p_nome
    @ult_nome = u_nome
    @phones = []
    @enderecos = []
    @data_nasc = dt_nasc
  end

  def nome_inteiro
    "#{@pri_nome} #{@ult_nome}"
  end

  def tels
    lista = phones.map(&:num_phone)
    lista.join(', ')
  end

  def mostre_data_nasc
    "a data de nascimento é: #{@data_nasc}"
  end

  def calcula_idade
    data = Time.new.to_date.year
    data - @data_nasc.year
  end

  def data_nascimento
    @data_nasc.strftime('%d/%m/%Y')
  end

  def dados_pessoais
    { nome:             nome_inteiro,
      data_nascimento:  data_nascimento,
      idade:            calcula_idade,
      list_end:         list_end,
      list_fones:       list_fones }
  end

  def incluir_fone_res(novo_num_res)
    incluir_fone(novo_num_res, 1)
  end

  def incluir_fone_com(novo_num_com)
    incluir_fone(novo_num_com, 2)
  end

  def incluir_fone_cel(novo_num_cel)
    incluir_fone(novo_num_cel, 3)
  end

  def fone_res
    fone_array(1)
  end

  def fone_com
    fone_array(2)
  end

  def fone_cel
    fone_array(3)
  end

  def incluir_end_res(end_tipo)
    incluir_endereco(end_tipo)
  end

  def incluir_end_com(end_tipo)
    incluir_endereco(end_tipo)
  end

  def incluir_end_postal(end_tipo)
    incluir_endereco(end_tipo)
  end

  def end_res
    enderecos_completos(1)
  end

  def end_com
    enderecos_completos(2)
  end

  def end_postal
    enderecos_completos(3)
  end

  private

  def fone_ident(ident)
    lista = fone_array(ident)
    lista.join(', ')
  end

  def fone_array(array)
    fones = phones.select { |f| f.tipo == array }
    lista = fones.map(&:num_phone)
    lista
  end

  def incluir_fone(fone, tipo)
    item = Telefone.new(fone, tipo)
    @phones.push(item)
  end

  def enderecos_completos(tipo)
    lista = enderecos.select { |list| list.tipo_end == tipo }
    format_end = lista.map(&:end_completo)
    format_end
  end

  def incluir_endereco(end_tipo)
    item = Endereco.new(end_tipo)
    @enderecos.push(item)
  end

  def list_end
    { residencial:   end_res,
      comercial:     end_com,
      postal:        end_postal }
  end

  def list_fones
    { residencial:   fone_res,
      comercial:     fone_com,
      celular:       fone_cel }
  end
end
