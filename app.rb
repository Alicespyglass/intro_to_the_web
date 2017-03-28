require 'sinatra'
set :session_secret, 'super secret'

get '/' do #localhost:4567/
  "Hello Connie"
end

get '/secret' do #localhost:4567/secret
  "We love HTML!"
end

get '/cat' do #localhost:4567/cat
  erb(:index)
end


# shotgun app.rb -p 4567
