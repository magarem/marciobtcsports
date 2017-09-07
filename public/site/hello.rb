require 'sinatra'

set :bind, '0.0.0.0'

get '/b' do
  "Hello World #{params[:name]}".strip
end

get '/a' do
  "22"
end
