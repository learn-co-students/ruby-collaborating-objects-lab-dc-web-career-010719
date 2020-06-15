class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    new_artist = self.new(name)
    new_artist.name = name
    new_artist.save
    new_artist
  end

  def self.find_by_name(name)
    self.all.find { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name).nil?
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end
  end

  def print_songs
    puts self.songs.map { |song| song.name }
  end

end
