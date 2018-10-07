class MusicImporter
  attr_accessor :filepath, :files

  def initialize(filepath)
    @path = filepath
    @files = []
  end

  def path
    @path
  end

  def files
    Dir.entries(@fielpath).each do |file|
      @files << File
    end
    @files
  end

  def self.import

  end
end
