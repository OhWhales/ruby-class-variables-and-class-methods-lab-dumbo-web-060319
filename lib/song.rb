
class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count = @@count + 1
    @@genres.push(genre)
    @@artists.push(artist)
  end 
    
  def self.count 
    return @@count
  end 
  def self.genres 
    return @@genres.uniq!
  end 
  def self.artists 
    return @@artists.uniq!
  end 
  def self.genre_count 
    myHash = {}
    counter = 0 
    # while (counter < @@genres.size)
    #   if myHash.key()
    x = myHash.key?("rap")
    puts x
  end
end 