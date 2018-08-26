#The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).

class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select {|song| song.artist = self}
  end
  
  def save
    @@all << self
  end
  
  def find_or_create_by_name(artist_name)
    if @@all.select {|artist| artist.name = artist_name} == nil
      new_artist = Artist.new(artist_name)
      new_artist.save
    end
    
  def print_songs
      Song.all.select {|song| song.artist = self}
  end
end