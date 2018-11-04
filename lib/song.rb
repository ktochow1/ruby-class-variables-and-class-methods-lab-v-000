class Song 
  
  attr_accessor :name, :artist, :genre
 
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist 
    @@genres << @genre
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres 
    @@genres.uniq
  end
    
  def self.count 
    @@count
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre.value = genre.count
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      # exit!
      end
    end
  end


end


# def self.genre_count
#     genre_count = {}
#     @@genres.each do |genre| #loop over genres
#       if genre_count[genre] #look if key of genre already exists
#         genre_count[genre] += 1  #increment its value by one
#       else
#         genre_count[genre] = 1 #set it equal to one if it does not exit
#       end
#     end
#     genre_count #return genre_count hash
#   end
# end



  