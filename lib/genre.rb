class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)

  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Genre.songs.select do |song|
      song.artist
    end
  end

end
