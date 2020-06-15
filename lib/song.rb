
require 'pry'
class Song

  attr_accessor :artist,:name


  def initialize(name)
    @name = name
  end



  def self.new_by_filename(name)
    inst = Song.new(name.split(" - ")[1])
    art = Artist.find_or_create_by_name(name.split(" - ")[0])
    art.add_song(inst)
    inst.artist = art
    #binding.pry
    return inst
  end

end
