require 'sinatra'
require_relative 'config/application'
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

helpers do
  def current_user
    if @current_user.nil? && session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
      session[:user_id] = nil unless @current_user
    end
    @current_user
  end
end

get '/' do
  redirect '/meetups'
end

get '/auth/github/callback' do
  user = User.find_or_create_from_omniauth(env['omniauth.auth'])
  session[:user_id] = user.id
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/meetups' do
  @meetups = Meetup.order(:name)
  erb :'meetups/index'
end

get '/meetups/new' do
  erb :'meetups/new'
end

get '/meetups/:id' do
  @meetup = Meetup.find(params[:id])
  # @members = @meetup.memberships
  erb :'meetups/show'
end

post '/meetups/new' do
  @username = current_user.username

  @meetup = Meetup.new(name: params["name"],
    location: params["location"],
    date: params["date"],
    description: params["description"])

  @memberships = Membership.new(creator: true,
    meetup_id: @meetup.id,
    user_id: current_user.id)

  if @meetup.save!
    redirect '/meetups/#{@meetup.id}'
  else
    erb :'meetups/new'
  end

end
