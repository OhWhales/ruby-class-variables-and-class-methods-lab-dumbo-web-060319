
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
    genreHash = {}
    x = @@genres.uniq!
    count = 0 
    while (count < x.size)
      y=x[count]
      genreHash[y] = 0
      count = count + 1
    end 
    count2 = 0 
    while (count2 < @@genres.size)
      genreHash[@@genres[count2]] = genreHash[@@genres[count2]+1
      puts genreHash[@@genres[count2]]
      count2 = count2 + 1
    end 
  end 

end 