require 'rspec'
require 'artist'
require 'album'

describe Artist do
  it "will initialize when an artist is input" do
    test_artist = Artist.new 'Beatles'
    expect(test_artist).to be_an_instance_of Artist
  end

  it "should assign an artist with a name" do
    test_artist = Artist.new 'Beatles'
    expect(test_artist.name).to eq 'Beatles'
  end

  it "should add a album to an artist" do
    test_artist = Artist.new 'Beatles'
    test_album = Album.new 'Rubber Soul'
    test_artist.add_album(test_album)
    expect(test_artist.album).to eq [test_album]
  end
end

describe Album do
  it "will initialize when an album name is input" do
    test_album = Album.new 'Rubber Soul'
    expect(test_album).to be_an_instance_of Album
  end

  it "should assign an album with a name" do
    test_album = Album.new 'Rubber Soul'
    expect(test_album.name).to eq 'Rubber Soul'
  end
end
