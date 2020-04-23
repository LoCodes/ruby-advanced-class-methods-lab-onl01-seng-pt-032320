class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name, artist_name)
    @name = name
    @artist_name = artist_name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save

  end

end
