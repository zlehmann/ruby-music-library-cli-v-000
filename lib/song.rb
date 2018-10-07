class Song
  attr_accessor :name

  @@all = []

  def initialize(name, artist = "")
    @name = name
    if artist != ""
      self.artist = artist
    end
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = Song.new(name)
    song.save
    return song
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
  end

end
