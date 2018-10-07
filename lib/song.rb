class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist = "")
    @name = name
    @artist = artist
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
    @artist = artist.add_song(self)
  end




end
