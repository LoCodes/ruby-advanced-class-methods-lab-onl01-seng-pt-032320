class Song
  attr_accessor :name, :artist_name
  @@all = []

  # def initialize(name, artist_name)
  #   @name = name
  #   @artist_name = artist_name
  # end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  # .create
  #     instantiates and saves the song, and it returns the new song that was created

  def self.create
    song = Song.new
    song.save
    #song

  end

end
