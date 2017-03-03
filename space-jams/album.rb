# require_relative 'tracks'
require'pry'
class Album
  attr_accessor :id, :title, :artists, :tracks, :duration_ms

  def initialize(album_id, album_name, artist)
    @id = album_id
    @title = album_name
    @artists = artist
    @duration_ms = duration_ms
    @tracks = []
  end

  def duration
    sum = 0
    @tracks.each do |hash|
      sum = hash[:duration_ms].to_i + sum
    end
    sum = (sum * 0.001) / 60
    "#{sum.round(2)}"
  end

  def songs
    songs = []
    @tracks.each do |hash|
      songs << "#{hash[:title]}"
    end
    " - #{songs.join("\n - ")}"

  end

  def summary
    summary = ["", "Name: #{@title}", "Artist(s): #{@artists}", "Duration (min.): #{duration}", "Tracks: ", "#{songs}"].join("\n")
  end

end
