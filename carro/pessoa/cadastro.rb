
require 'net/http'
require 'date'
require 'time'
require './pessoa'
# Cadastro
class Cadastro
  attr_accessor :autocode, :dado_pessoal, :especialidade,
                :plantao, :horarios

  def initialize(cadastro = {})
    @autocode         = cadastro [:autocode]
    @dado_pessoal     = cadastro [:dado_pessoal]
    @especialidade    = cadastro [:especialidade]
    @plantao          = cadastro [:plantao]
    @horarios         = Cadastro [:horarios]
  end

  def autocode
  end

  def dado_pessoal
  end

  def especialidade
  end

  def plantao
  end

  def horarios
  end
end
