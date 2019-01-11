# require_relative './spec/fixtures/mp3s'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @list_file_names = []
    @list_file_names = Dir.entries(@path).select { |file| file.include?(".mp3") }
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end

end
