#hello.rb
require 'sinatra'

get '/hello/:name' do
  @name = params['name']
  erb :incrementar
end