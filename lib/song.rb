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
    @@all.each do |song|
      binding.pry
      if song.name == song_name
        song 
      end
    end 
  end 
    
  
   def self.all
    @@all
  end
  
  

end
