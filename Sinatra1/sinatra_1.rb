# Escribir una clase que permita modelar un Contador, con las siguientes características:
# 
#     Obtener valor actual
#     Incrementar el valor en 1
#     Decrementar el valor en 1
#     Incrementar el valor en x
#     Decrementar el valor en x
#     Asignar un valor inicial al contador

require 'sinatra'
require 'byebug'
require 'shotgun'

get '/' do
  @title = 'Welcome tu sumas y restas !'
  erb :index
end