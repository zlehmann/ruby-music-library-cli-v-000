class MusicLibraryController


  def initialize(path="./db/mp3s")
    musicimporter = MusicImporter.new(path)
    musicimporter.import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    input = gets.strip

    case input
    when 'list songs'
      self.list_songs
    when 'list artists'
      self.list_artists
    when 'list genres'
      self.list_genres
    when 'list artist'
      #stuff
    when 'list genre'
      #stuff
    when 'play song'
      #stuff
    when 'exit'

    else
      puts "Sorry that is not a valid input."
      self.call
    end
  end

  def list_songs
    song_list = Song.all
    sorted_song_list = song_list.sort_by { |song| song.name }
    count = 1
    sorted_song_list.each do |song|
      puts "#{count}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
      count += 1
    end
  end

  def list_artists
    artist_list = Artist.all
    sorted_artist_list = artist_list.sort_by { |artist| artist.name }
    count = 1
    sorted_artist_list.each do |artist|
      puts "#{count}. #{artist.name}"
      count += 1
    end
  end

  def list_genres
    genres_list = Artist.all
    sorted_genres_list = genres_list.sort_by { |genre| genre.name }
    count = 1
    sorted_genres_list.each do |genre|
      puts "#{count}. #{genre.name}"
      count += 1
    end
  end
end
