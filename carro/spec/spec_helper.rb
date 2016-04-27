require 'simplecov'
require 'rspec'

SimpleCov.start do
  add_filter '/spec/'

  add_group 'Autos', 'autos'
  add_group 'Pessoa', 'pessoa'
end

require 'loads'
