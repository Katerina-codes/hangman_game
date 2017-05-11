require 'word_places'

describe WordPlaces do

  it "returns one line for one character" do
    word_places = WordPlaces.new
    expect(word_places.spaces("a")).to eq("_")
  end

end
