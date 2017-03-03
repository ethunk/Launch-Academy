require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

set :bind, '0.0.0.0'  # bind to all interfaces

post '/calculate' do
  @result = nil
  @error = nil
  if params[:first_number] != '' && params[:second_number] != ''
    first_number = params[:first_number].to_i
    second_number = params[:second_number].to_i
    case params[:operation]
    when "+"
      @result = first_number + second_number
    when "-"
      @result = first_number - second_number
    when "*"
      @result = first_number * second_number
    when "/"
      @result = first_number / second_number
    else
      @result = nil
    end
  else
    @error = "Please supply more than one number"
  end
  erb :index
end
