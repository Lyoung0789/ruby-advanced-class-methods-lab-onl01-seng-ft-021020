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
    @@all << self.new
    return Song.all
  end 
end
