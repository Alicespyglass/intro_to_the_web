require 'sinatra'

get '/' do
  "Hello Connie"
end

get '/secret' do
  "We love HTML!"
end

get '/cat' do
  "<div>
  <img src='http://bit.ly/1eze8aE' style='border: 3px dashed red' >
  </div>"
end
