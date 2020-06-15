class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    new_song = self.new(song_name)
    new_artist = Artist.new(artist_name)
    new_artist.songs << new_song
    new_song.artist = new_artist
    new_song
  end

end
