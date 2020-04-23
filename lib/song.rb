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
  # # .create_by_name
  #   instantiates and saves a song with a name property
  def self.create_by_name(name)
    song = Song.create
    song.name = name
    song
  end
  # .find_by_name
  #   can find a song present in @@all by name (FAILED - 1)
  #   returns falsey when a song name is not present in @@all

  def self.find_by_name(name)
    @@all.find{|person| person.name == name}

  end

end
