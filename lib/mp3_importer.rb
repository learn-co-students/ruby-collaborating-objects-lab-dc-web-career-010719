class MP3Importer

  attr_accessor :path

  @@files = []

  def initialize(path)
    @path = path
    @@files << self
  end

  def files
    array = Dir.entries(self.path)
    # binding.pry
    return array[2..-1]
  end

  def import
    self.files.each do |str|
      Song.new_by_filename(str)
    end
  end


end
