class Song
  attr_accessor :name, :artist_name
  @@all = []


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
    return song
  end

  def self.new_by_name
  end

end
