#The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class

class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist =(artist_object)
    @artist = artist_object
  end
  
  def new_by_filename(filenames)
    filenames.each {|file|
      song_name = file.split(" - ")[0]
      song = Song.new(song_name)
      artist_name = file.split(" - ")[1]
      artist = Artist.find_or_create_by_name(artist_name)}
  end  
  
end