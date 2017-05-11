require 'word_places'

describe WordPlaces do

  subject(:word_places) { described_class.new }

  it "returns one line for one character" do
    expect(subject.spaces("a")).to eq(["_ "])
  end

  it "returns two lines for two characters" do
    expect(subject.spaces("aa")).to eq(["_ ", "_ "])
  end

  it "returns two lines for two different characters" do
    expect(subject.spaces("ab")).to eq(["_ ", "_ "])
  end

  it "returns three lines for three characters" do
    expect(subject.spaces("aaa")).to eq(["_ ", "_ ", "_ "])
  end

  it "substitutes a line with a letter if guess is correct" do
    expect(subject.substitute_letters("a", "_ ", "a")).to eq("a ")
  end

  # it "substitutes a line with 'a'" do
  #   expect(subject.substitute_letters("a", "_ ")).to eq("a ")
  # end

  it "substitutes a line with 't'" do
    expect(subject.substitute_letters("t", "_ ", "t")).to eq("t ")
  end

  it "substitutes a line with 'e'" do
    expect(subject.substitute_letters("e", "_ ", "e")).to eq("e ")
  end

  it "substitutes 2 lines with the same 2 characters" do
    expect(subject.substitute_letters("a", ["_", "_"], "aa")).to eq(["a", "a"])
  end

end
