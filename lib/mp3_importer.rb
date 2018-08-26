#The MP3 Importer will parse all the filenames in the db/mp3s folder and send the filenames to the Song class
# path = './db/mp3s'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @import_files = []
  end
  
  def files
    Dir.foreach(@path).each {|mp3file| 
      if mp3file.to_s =! "." && mp3file.to_s =! ".."
        @import_files << mp3file.to_s
    }
    @import_files
  end
  
  def import
    Song.new_by_filename(@import_files)
  end
  
end