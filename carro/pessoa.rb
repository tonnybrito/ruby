#!/usr/bin/env ruby
# encoding: utf-8
# AULA 02
# Fazer uma classe para representar pessoas.
# O construtor deve receber os seguintes parâmetros e definir aos respectivos atributos da classe:
#   * Primeiro nome
#   * Último nome
#   * Telefone residencial
#   * Telefne comercial
#   * Telefone celular
#   * Data de nascimento
#   * Endereço
#
# A classe deverá possuir métodos para:
#   * Mostrar o nome completo ( Primeiro nome + Último nome)
#   * Mostrar todos os telefones
#   * Calcular a idade da pessoa
#   * Mostrar o endereço da pesss.
# AULA 03
# CHAMAR A CLASSE TELEFONE (telefone.rb) NA CLASSE PESSOA (pess
require 'net/http'
require 'date'
require 'time'
require './telefone'
require './endereco'

class Pessoa
  attr_accessor :pri_nome, :ult_nome, :phones, :enderecos, :data_nasc#atributos

  def initialize(p_nome, u_nome, dt_nasc) #parametros
    @pri_nome = p_nome
    @ult_nome = u_nome
    @phones = []
    @enderecos = []
    @data_nasc = dt_nasc
  end

  def nome_inteiro
    return "#{@pri_nome} #{@ult_nome}"
  end

  def tels
    lista = phones.map { |telef| (telef.num_phone) }
    return lista.join(", ")
  end

  def mostre_data_nasc
    return "a data de nascimento é: #{@data_nasc}"
  end

  def calcula_idade
    data = Time.new.to_date.year
    return  data - @data_nasc.year
  end

  # retornar a data de nascimento no formato  ??/??/???? "12/08/1964"
  def data_nascimento
    return @data_nasc.strftime('%d/%m/%Y')
  end

  def dados_pessoais
    dados_pessoais = {
      :nome             => nome_inteiro,
      :data_nascimento  => data_nascimento,
      :idade            => calcula_idade,
      :enderecos        => {
        :residencial    => end_res,
        :comercial      => end_com,
        :postal         => end_postal
      },
      :telefones        => {
        :residencial    => fone_res,
        :comercial      => fone_com,
        :celular        => fone_cel
      }
    }
    return dados_pessoais
  end

  # metodo incluir_fone usa o parametro novo_numero para criar um objeto da classe telefone.
  # ele empurra (push) o objeto criado para o atributo @phones (que é um array).
  def incluir_fone_res (novo_num_res)
    incluir_fone(novo_num_res, 1)
  end

  def incluir_fone_com (novo_num_com)
    incluir_fone(novo_num_com, 2)
  end

  def incluir_fone_cel (novo_num_cel)
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

  def incluir_end_res (end_tipo, rua, numero, complemento, bairro, cidade, estado, pais, cep)
   incluir_endereco(end_tipo, rua, numero, complemento, bairro, cidade, estado, pais, cep)
  end

  def incluir_end_com (end_tipo, rua, numero, complemento, bairro, cidade, estado, pais, cep)
   incluir_endereco(end_tipo, rua, numero, complemento, bairro, cidade, estado, pais, cep)
  end

  def incluir_end_postal (end_tipo, rua, numero, complemento, bairro, cidade, estado, pais, cep)
   incluir_endereco(end_tipo, rua, numero, complemento, bairro, cidade, estado, pais, cep)
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

  def fone_ident (ident)
    lista = fone_array(ident)
    return lista.join(", ")
  end

  def fone_array (array)
    fones =  phones.select { |f| f.tipo == array }
    lista = fones.map { |fone| fone.num_phone }
    return lista
  end

  def incluir_fone (fone, tipo)
    item = Telefone.new(fone, tipo)
    @phones.push(item)
  end

  def enderecos_completos (tipo)
    lista = enderecos.select { |list| list.tipo_end == tipo }
    teste = lista.map {|endereco| endereco.end_completo}
    return teste
  end

  def incluir_endereco (end_tipo, rua, numero, complemento, bairro, cidade, estado, pais, cep)
    item = Endereco.new(end_tipo, rua, numero, complemento, bairro, cidade, estado, pais, cep)
    @enderecos.push(item)
  end
end
