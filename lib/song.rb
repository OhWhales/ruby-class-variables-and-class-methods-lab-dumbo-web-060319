
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
    while (counter < @@genres.size)
      if myHash.key?(@@genres[counter]) == false 
        myHash[@@genres[counter]] = 1 
      end 
      counter = counter + 1
    end 
    return myHash
  end
end 