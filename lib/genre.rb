class Genre
  attr_reader :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    songs = Song.all.select do |song|
      song.genre.name == self.name
    end
    songs
  end
end
