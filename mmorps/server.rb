require "sinatra"
require "pry"
require_relative "models/game.rb"

set :bind, '0.0.0.0'  # bind to all interfaces

use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe"
}

get "/" do
  if session[:player_score].nil?
    session[:computer_score] = 0
    session[:player_score] = 0
  end
  erb :index
end

post "/" do
  @player_choice = params[:choice]
  @reset = params[:reset]
  @computer_choice = Game.new

  if @player_choice == @computer_choice.hands
    session[:computer_score] += 0
    session[:player_score] += 0
    session[:message] = "You tied!"
  elsif (@player_choice == "Rock" && @computer_choice.hands == "Scissors") || (@player_choice = "Paper" && @computer_choice.hands == "Rock") || (@player_choice = "Scissors" && @computer_choice.hands == "Paper")
    session[:player_score] += 1
    session[:message] = "You won!"
  else
    session[:computer_score] += 1
    session[:message] = "You lost!"
  end

  if session[:player_score] == 2
      session[:message] = "Game over! You won in best of three! Click Reset Game button below to play again!"
  elsif session[:computer_score] == 2
      session[:message] = "The game is over! You lost in best of three! Click Reset Game button below to play again!"
  end

  redirect "/"
end

get '/reset' do
  session.clear
  redirect '/'
end
