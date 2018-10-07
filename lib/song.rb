class Song
  attr_accessor :name

  @@all = []

  def initialize(name, artist = "", genre = "")
    @name = name
    if artist != ""
      self.artist = artist
    end
    if genre != ""
      self.genre = genre
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
    artist.add_song(self)
  end

  def genre
    @genre
  end

  def genre=(genre)
    @genre = genre
    if genre.songs.include?(self) == false
      genre.songs << self
    end
  end

  def self.find_by_name(name)
    results = @@all.select { |song| song.name == name}
    results[0]
  end

  def self.find_or_create_by_name(name)
    find_results = self.find_by_name(name)
    if find_results != []
      return find_results
    else
      self.create(name)
    end
  end


end
