class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    @name = name
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    Song.all << song
    song
  end 
  
  def self.new_by_name(name)
    song = self.new
    puts song
    song.name = name
    song.name
  end 
end
