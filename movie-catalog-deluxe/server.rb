require "sinatra"
require "pg"
require "pry"

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development do
  set :db_config, { dbname: "movies" }
end

configure :test do
  set :db_config, { dbname: "movies_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

get "/" do
  "
  <h1><b>Actors & Movies</b></h1>
  <ul>
    <ol><h2><a href='/actors'>List of Actors</a></h2></ol>
    <ol><h2><a href='/movies'>List of Movies</a></h2></ol>
  </ul>
  "
end

get "/actors" do
  db_connection do |conn|
    actors = conn.exec('SELECT actors.id, actors.name FROM actors ORDER BY actors.name')
    @actors = actors.to_a
  end
  erb :'actors/index'
end

get "/actors/:id" do
  @actor_movies = db_connection do |conn|
      conn.exec_params("SELECT movies.title, cast_members.character, actors.name, movies.id FROM cast_members
      JOIN actors ON cast_members.actor_id = actors.id
      JOIN movies ON cast_members.movie_id = movies.id
      WHERE actors.id = ($1)
      ORDER BY movies.title", [params[:id]])
    end
  erb :'actors/show'
end

get "/movies" do
  db_connection do |conn|
    @movies = conn.exec("SELECT movies.id, movies.title, movies.year, genres.name AS genre, movies.rating, studios.name AS studio FROM movies
    FULL OUTER JOIN genres ON genres.id = movies.genre_id
    FULL OUTER JOIN studios ON studios.id = movies.studio_id
    ORDER BY movies.title")
  end
  erb :'movies/index'
end

get "/movies/:id" do
  @movie_details = db_connection do |conn|
    conn.exec_params("SELECT movies.id as movie_id, movies.title, movies.synopsis, movies.rating AS rating, actors.id AS actor_id, actors.name, cast_members.character, movies.genre_id, genres.name AS genre, movies.studio_id, studios.name AS studio, movies.year AS year FROM movies
    JOIN cast_members ON cast_members.movie_id = movies.id
    JOIN actors ON actors.id = cast_members.actor_id
    JOIN genres ON genres.id = movies.genre_id
    JOIN studios ON studios.id = movies.studio_id
    WHERE movies.id = ($1)
    ORDER BY actors.name", [params[:id]])
  end
  erb :'movies/show'
end
