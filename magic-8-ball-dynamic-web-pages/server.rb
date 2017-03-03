require "sinatra"
require_relative 'responses'

set :bind, "0.0.0.0"

get '/' do
  erb :index
end

get '/show' do
  erb :show
end
