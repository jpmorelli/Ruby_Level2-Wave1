#hello.rb
require 'sinatra'
require 'byebug'
require 'shotgun'

  get '/' do
  'Hello world'
  end

get '/hello/:name' do
  "Hello #{params['name']}!"
end

get '/suma/:num' do
  "Sumo 1 al numero ingresado #{params['num'].to_i + 1}!"
  
end

get '/multiplicar/:value1/?:value2?' do
  params['value2'] ||= 1
  numero1 = params['value1'].to_f
  numero2 = params['value2'].to_f
  "El resultado es <b>#{numero1 * numero2}</b>"
end