class Song

attr_accessor :name, :genre, :artist

def initialize(name,genre)
  @name = name
  # Genre.all.none?{|x|x.name == genre} ? self_genre = Genre.new(genre) : self_genre = Genre.all.find{|x|x.name == genre}
  # @genre = self_genre
  @genre = genre
  genre.add_song(self)
end



end
