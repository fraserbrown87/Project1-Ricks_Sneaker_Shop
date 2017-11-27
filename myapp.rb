require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'sinatra/reloader')
require_relative('controllers/brand_controller')
require_relative('controllers/model_controller')

get '/' do
  @models = Model.all
  erb (:index)
end
