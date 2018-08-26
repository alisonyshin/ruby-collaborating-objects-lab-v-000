#The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class

class Song
  attr_accessor :name
  
  def initiate(name)
    @name = name
  end
  
end