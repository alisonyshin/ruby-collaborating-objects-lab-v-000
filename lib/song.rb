#The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class

class Song
  attr_accessor :name
  
  def initiate(name)
    @name = name
  end
  
  def artist(artist)
    @artist = artist
  end
  
  def new_by_filename(filenames)
    filenames.each {|file|
      song_name = file.split(" - ")[0]
      song = Song.new(song_name)
      artist_name = file.split(" - ")[1]
      artist = song.artist(artist_name)
  end  
  
end