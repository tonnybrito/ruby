require 'simplecov'
require 'rspec'

require 'loads'

SimpleCov.start do
  add_filter '/spec/'

  add_group 'Carro', 'ruby'
end
