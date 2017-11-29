require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/brands.rb' )

get '/brands' do
  @brand_name = Brand.all()
  erb ( :"brands/index" )
end

get '/brands/new' do # new
  erb( :"brands/new" )
end

post '/brands' do # create
  @brands = Brand.new( params )
  @brands.save()
  redirect to "/brands"
end

get '/brands/:id' do
  @brand_name = Brand.find(params['id'].to_i)
  erb( :"brands/show" )
end
#
# #
# get '/brands/:id/edit' do # edit
#   @brand = Brand.find( params[:id] )
#   @models = Model.all
#   erb( :edit )
# end
# #
# put '/brands/:id' do # update
#   Brand.new( params ).update
#   redirect to '/brands'
# end
#
# delete '/brands/:id' do # delete
#   brand = Brand.find( params[:id] )
#   brand.delete()
#   redirect to '/brands'
# end
