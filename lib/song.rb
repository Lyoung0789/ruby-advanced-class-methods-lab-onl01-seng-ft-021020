class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    
  
  end 
  
  def self.create
    song = self.new
    Song.all << song
    song
  end 
  
  def self.bew_by_name
    
  end 
end
