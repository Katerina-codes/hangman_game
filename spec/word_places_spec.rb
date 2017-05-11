require 'word_places'

describe WordPlaces do

  subject(:word_places) { described_class.new }

  it "returns one line for one character" do
    expect(subject.spaces("a")).to eq(["_"])
  end

  it "returns two lines for two characters" do
    expect(subject.spaces("aa")).to eq(["_","_"])
  end

  it "returns two lines for two different characters" do
    expect(subject.spaces("ab")).to eq(["_","_"])
  end

  it "returns three lines for three characters" do
    expect(subject.spaces("aaa")).to eq(["_", "_", "_"])
  end

end
