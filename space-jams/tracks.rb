require_relative 'album'

class Track
  attr_reader :album_id, :track_id, :title, :track_number, :duration_ms, :total_duration

  def initialize
      @album_id = album_id
      @track_id = track_id
      @title = title
      @track_number = track_number
      @duration_ms = duration_ms
      @total_duration = total_duration
  end

  def songs

  end

end

# def self.duration
#   sum = 0
#   @album.tracks.each do |duration|
#     total_duration = sum += @album[:duration_ms]
#     "Duration (min) #{1000 * total_duration.to_f}"
#   end
# end
#
# def self.
#   songs
#   songs = []
#   @album.tracks.each do |title|
#     songs << @album[:title]
#   end
#   songs.each do |song|
#     "- #{song}"
#   end
# end
