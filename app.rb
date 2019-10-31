require 'sinatra'
require 'shotgun'
set :session_secret,
'super secret'

  get '/' do
    "Hello!"
  end

  get '/secret' do
    "Hello Kenny, Arjun, Taiwo  Michael!"
  end

  get '/random-cat' do
    @Names = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
  end

  post '/named-cat' do
    p params
    @Names = params[:name]
    erb(:index)
  end

  get '/cat-form' do
    "Hello World"
    erb(:cat_form)
  end
