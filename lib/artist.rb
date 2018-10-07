class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    artist = Artist.new(name)
    artist.save
    return artist
  end

  def songs
    @songs
  end

  def add_song(song)
    if song.artist != ""
      song.artist = self
    end
    if @songs.exclude?(song)
      @songs << song
    end
  end

end
