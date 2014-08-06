class Artist

    @@all_artists = []
  def initialize(name)
    @name = name
    @album = []
  end

  def Artist.all
    @@all_artists
  end

  def name
    @name
  end

  def album
    @album
  end

  def add_album(album)
    @album << album
  end
end

