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
  # .new_by_name
  #   instantiates a song with a name property
  def self.new_by_name(name="Blank Space")
    song = Song.new
    song.name = name
    song
  end
  #
  # def self.create_by_name(name)
  #   song = Song.new
  #   song.create = name
  #   song.save
  #   song
  # end

end
