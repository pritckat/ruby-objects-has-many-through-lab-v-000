class Artist

  @@all = []

  def initialized(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new
    song.artist = self
    song.genre = genre
    song.name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
  end

end
