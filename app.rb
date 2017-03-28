require 'sinatra'
set :session_secret, 'super secret'

get '/' do #localhost:4567/
  "Hello Connie"
end

get '/secret' do #localhost:4567/secret
  "We love HTML!"
end

get '/random-cat' do #localhost:4567/cat
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do #localhost:4567/cat
  p params
  @name = params[:name]

  erb(:index)
end


# shotgun app.rb -p 4567
