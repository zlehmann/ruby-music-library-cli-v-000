class MusicImporter
  attr_accessor :path, :files

  def initialize(filepath)
    @path = filepath
    @files = []
  end

  def path
    @path
  end

  def files
    Dir.entries(@fielpath).each do |file|
      @files << file
    end
    @files
  end

  def self.import

  end
end
