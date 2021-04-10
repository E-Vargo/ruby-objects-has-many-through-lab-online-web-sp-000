class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_song(name, artist, genre)
  name  = Song.new
  name.artist = self
end
def songs
  Song.all.select {|song| song.artist == self}
end

def genres
songs.map {|song|  song.genre}
end

end
