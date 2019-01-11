class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path

  end

  def files
    #binding.pry
    array = Dir.entries(self.path)
    return array[2..-1]
  end


  def import
    self.files.each do |str|
      Song.new_by_filename(str)
    end

  end

end
