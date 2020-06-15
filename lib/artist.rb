require 'pry'
class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    atist = self.all.find { |artist| artist.name == name}
    if atist == nil
      Artist.new(name)
    else
      atist
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}

  end
end
