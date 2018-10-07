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
    Dir.glob("#{@path}/*.mp3").each do |file|
      filename = file.split(%r{/})[-1]
      @files << filename
    end
    @files
  end

  def self.import
    @files.each do |file|
      new_song = Song.create_from_filename(file)
    end
  end
end
