class Genre
  attr_reader :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    songs = Song.all.select {|song| song.genre.name == self.name}
  end
  
  def artists
    self.songs.select {|song| if song.genre.name == self.name song.artist}
  end
end
