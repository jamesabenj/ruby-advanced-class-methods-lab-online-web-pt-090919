require "pry"
class Song
  attr_accessor :name 
  @@all = []
  
  def self.create
    song = self.new 
    @@all << song 
    song 
  end
  
  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name 
    song
  end  
  
  def self.create_by_name(song_name)
    song = self.new 
    song.name = song_name 
    @@all << song 
    song 
  end 
  
  def self.find_by_name(song_name)
    @@all.detect {|song| song.name == song_name}
      end
      
  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name)
      
    else self.create_by_name(song_name)
      end 
    end 
  end 
    
  
   def self.all
    @@all
  end
  
  

end
