class MusicImporter
  attr_accessor :filepath, :files

  def initialize(filepath)
    @filepath = filepath
    @files = []
  end

  def path
    @filepath
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
