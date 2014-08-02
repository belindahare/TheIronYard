require 'sinatra'
require 'data_mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/blog')


class Post
  include DataMapper::Resource
    property :id, Serial
    property :post_title, String
    property :content, String
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @post = Post.all
  erb :index, layout: :siteplan
end

get '/create_post' do
  erb :create_post, layout: :siteplan
end

post '/create_post' do
  @post = Post.create params[:post]
  redirect to ('/')
end


get '/edit_post/:id' do
  @post = Post.get params[:id]
  erb :edit_post, layout: :siteplan
end

post '/edit_post/:id' do
  @post = Post.get params[:id]
  @post.update params[:post]
  redirect to('/')
end

get '/show_post/:id' do
  @post = Post.get params[:id]
  erb :show_post, layout: :siteplan
end


delete '/delete_post/:id' do
  @post = Post.get params[:id]
  @post.destroy
  redirect to ('/')
end













