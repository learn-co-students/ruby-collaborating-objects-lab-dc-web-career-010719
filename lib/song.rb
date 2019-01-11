class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    arr = file_name.split(" - ")
    song_name = arr[1]
    song_writer = arr[0]
    song = self.new(song_name)
    artist = song.artist_name(song_writer)
    artist.add_song(song)
    song
  end

  def artist_name(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end
