require 'pry'
class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.find_or_create_by_name(name)
    art = @@all.find { |i| i.name== name}
    if art.nil?
      return Artist.new(name)
    else
      return art
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name }

  end

end
