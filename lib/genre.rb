class Genre

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end


  def artists
    @songs.map{|song| song.artist}
  end


  def add_song(song)
    @songs << song
    song.genre = self

  end

  def songs
    @songs
  end

end
