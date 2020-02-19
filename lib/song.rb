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
    song.name = name
    song
  end 
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name 
    @@all << song
    song
  end 
  
  def self.find_by_name(name)
    @@all.find do |i|
      i.name == name
    end 
  end 
  
 def self.find_or_create_by_name(song_name)
    # @@all.each do |i| 
    #   if i.name == song_name
    #     return i 
    #   end
    # end 
    if self.find_by_name(song_name)
      return self.find_by_name(song_name)
    end 
    self.create_by_name(song_name)
  end 
  
  def self.alphabetical 
    @@all.sort_by!{|song| song.name}
  end 
end
