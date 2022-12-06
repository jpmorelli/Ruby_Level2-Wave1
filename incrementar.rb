require 'sinatra'
require 'byebug'
require 'shotgun'

get '/suma/:num' do
  result = params['num'].to_i + 1
  
   @numero = result

  erb :incrementar

  #<p> <%= local_variables %> </p>

end