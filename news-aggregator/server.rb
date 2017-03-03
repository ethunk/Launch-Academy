require 'sinatra'
require 'pry'
require 'erb'
require 'csv'

set :root, File.dirname(__FILE__)
set :bind, '0.0.0.0'

get '/' do
  erb :index
end

get "/articles" do
  @stored_articles = CSV.read("data/articles.csv")
  erb :articles
end

get '/articles/new' do
  erb :submission
end

post "/articles" do
  CSV.open("data/articles.csv", "a+") do |csv|
    csv << [
    params["article_title"],
    params["article_description"],
    params["article_url"]
  ]
  end
  redirect "/articles"
end
