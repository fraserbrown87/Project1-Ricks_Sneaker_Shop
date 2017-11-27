require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/model.rb' )

get '/models' do
  @model_name = Model.all()
  erb ( :"models/index" )
end

get '/models/:id' do
  @model_name = Model.find(params['id'].to_i)
  erb( :"models/show" )
end
