require 'sinatra'
set :session_secret, 'super secret'

get '/' do #localhost:4567/
  "Hello Connie"
end

get '/secret' do #localhost:4567/secret
  "We love HTML!"
end

get '/random-cat' do #localhost:4567/random-cat
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do #localhost:4567/named-cat
  p params
  @name = params[:name]
  erb(:index)
end

get '/name-form' do #localhost:4567/name-form
  erb(:name_form)
end


# shotgun app.rb -p 4567
