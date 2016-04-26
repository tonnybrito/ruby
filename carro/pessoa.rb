# encoding: utf-8

require 'net/http'
require 'date'
require 'time'
require './telefone'
require './endereco'
require './pessoa_private'

# Pessoa
class Pessoa
  include PessoaPrivate
  attr_accessor :pri_nome, :ult_nome, :phones, :enderecos, :data_nasc

  def initialize(p_nome, u_nome, dt_nasc)
    @pri_nome = p_nome
    @ult_nome = u_nome
    @phones = []
    @enderecos = []
    @data_nasc = dt_nasc
  end

  def nome_inteiro
    return 'não informado' \
    if @pri_nome.to_s.strip.empty? && ult_nome.to_s.strip.empty?

    "#{@pri_nome} #{@ult_nome}"
  end

  def tels
    return 'não informado' if phones.to_s.strip.empty?
    lista = phones.map(&:num_phone)
    lista.join(', ')
  end

  def calcula_idade
    return 'não informado' if @data_nasc.to_s.strip.empty?
    data = Time.new.to_date.year
    data - @data_nasc.year
  end

  def data_nascimento
    return 'não informado' if @data_nasc.to_s.strip.empty?
    @data_nasc.strftime('%d/%m/%Y')
  end

  def dados_pessoais
    {
      nome:             nome_inteiro,
      data_nascimento:  data_nascimento,
      idade:            calcula_idade,
      list_end:         list_end,
      list_fones:       list_fones
    }
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
end
