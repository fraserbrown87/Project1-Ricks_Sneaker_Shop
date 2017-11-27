require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/brand.rb' )

get '/brands' do
  @brand_name = Brand.all()
  erb ( :"brands/index" )
end

get '/brands/:id' do
  @brand_name = Brand.find(params['id'].to_i)
  erb( :"brands/show" )
end
