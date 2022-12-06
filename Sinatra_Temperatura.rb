require 'sinatra'
require 'byebug'
require './conversor.rb'

get '/' do
    @title = 'Ejercicio 1 - Code Academy'
    erb :index
end

post '/conversor' do
    grados = params['unit_input'].to_i
    origen = params['unit_origen']
    destino = params['unit_destino']
    conversor = Temperatura.new(grados,origen,destino)
    @result = conversor.convert
    
    erb :resultado
end