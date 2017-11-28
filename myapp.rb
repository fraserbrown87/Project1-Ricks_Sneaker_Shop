require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'sinatra/reloader')
require_relative('controllers/brands_controller')
require_relative('controllers/models_controller')

get '/' do
  @models = Model.all
  erb (:home)
end
