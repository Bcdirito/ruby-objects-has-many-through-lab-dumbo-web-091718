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
    songs = Song.all.select do |song|
      song.genre.name == self.name
    end
    songs
  end
  
  def artists
    Artist.all.select do |a|
      a.songs.select do {|s| binding.pry}
    end
  end
end
