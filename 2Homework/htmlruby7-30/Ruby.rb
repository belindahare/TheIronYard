require 'sinatra'
require 'Faker'

# homepage
get '/' do
  erb :Home, layout: :siteformat
end
# book 1?
get '/1' do
  erb :Book1, layout: :siteformat
end

get '/2' do
  erb :Book2, layout: :siteformat
end

