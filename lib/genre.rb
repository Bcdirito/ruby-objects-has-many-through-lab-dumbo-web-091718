class Genre
  attr_reader :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    songs = Song.all.map do |song|
      binding.pry
    end
    songs
  end
end
