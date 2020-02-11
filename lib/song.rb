class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create #this builds the class constructor
    song = self.new
    self.all << song #this initializes a song and saves it to the @all class variable
    song #returns song instance that has been initialized and saved
  end

  def self.new_by_name(title)
    song = self.new #instantiates
    song.name = title #takes in the string name of a song and returns a song instance with name set as name property
    song
  end

  def self.create_by_name(title)
    song = self.create
    song.name = title
    song
  end

  def self.find_by_name(title)
    result = self.all.detect {|song| song.name == title}
    result
  end

  def self.find_or_create_by_name
  end

end
