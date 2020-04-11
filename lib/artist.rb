class Artist 
  
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all  
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select do |song| song.artist == self
    end
  end
  
<<<<<<< HEAD
  def self.find_or_create_by_name(name)
    found_artist = self.all.find {|artist| artist.name == name}
    if found_artist
      found_artist
    else
     self.new(name)
     end
  end
  
  def print_songs
    self.songs.each do |song|
=======
  def find_or_create_by_name
  end
  
  def print_songs
    self.each do |song|
>>>>>>> 471512cd6a5aca8cf843a728dfceb9e2cf7c4297
    puts song.name
    end
  end
  
  
end