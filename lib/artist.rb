class Artist
    attr_reader:name, :album
    @@all_artists = []

  def initialize(name)
    @name = name
    @album = []
  end

  def Artist.all
    @@all_artists
  end

  def add_album(album)
    @album << album
  end

  def save
    @@all_artists << self
  end
end

