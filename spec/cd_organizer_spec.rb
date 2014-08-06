require 'rspec'
require 'artists'
require 'albums'

describe Artists do
  it "will initialize when an artist is input" do
    test_artist = Artists.new 'Rachmaninov'
    expect(test_artist).to be_an_instance_of Artists
  end

  it "should assign an artist with a name" do
    test_artist = Artists.new 'Rachmaninov'
    expect(test_artist.name).to eq 'Rachmaninov'
  end
end
