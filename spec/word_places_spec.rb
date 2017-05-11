require 'word_places'

describe WordPlaces do

  it "returns one line for one character" do
    word_places = WordPlaces.new
    expect(word_places.spaces("a")).to eq("_")
  end

  it "returns two lines for two characters" do
    word_places = WordPlaces.new
    expect(word_places.spaces("aa")).to eq(["_","_"])
  end

  it "returns three lines for three characters" do
    word_places = WordPlaces.new
    expect(word_places.spaces("aaa")).to eq(["_", "_", "_"])
  end

end
