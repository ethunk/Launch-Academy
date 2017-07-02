require "sinatra"
require "pg"
require "pry"

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development do
  set :db_config, { dbname: "grocery_list_development" }
end

configure :test do
  set :db_config, { dbname: "grocery_list_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

FILENAME = "grocery_list.txt"

get "/" do
  redirect "/groceries"
end

get "/groceries" do
  @groceries = db_connection { |conn| conn.exec("SELECT * FROM groceries")}
  erb :groceries
end

post "/groceries" do
  if !params[:name].empty?
    db_connection do |conn|
        conn.exec_params("INSERT INTO groceries (name) VALUES ($1)", [params[:name]])
    end
  end
  redirect "/groceries"
end

get "/groceries/:id" do
  grocery_info = db_connection { |conn| conn.exec_params("SELECT groceries.id, groceries.name AS name, comments.body AS body, comments.author AS author FROM groceries
    FULL OUTER JOIN comments ON comments.grocery_id = groceries.id
    WHERE groceries.id = ($1)
    ORDER BY comments.id", [params[:id]])}
  @grocery_info = grocery_info.to_a
  erb :show
end
