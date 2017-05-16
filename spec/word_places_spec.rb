require 'word_places'

describe WordPlaces do

  subject(:word_places) { described_class.new }

  it "returns one line for one character" do
    expect(subject.spaces("a")).to eq("_")
  end

  it "returns two lines for two characters" do
    expect(subject.spaces("aa")).to eq("__")
  end

  it "returns three lines for three characters" do
    expect(subject.spaces("aaa")).to eq("___")
  end

  it "substitutes a line with a letter if guess is correct" do
    expect(subject.substitute_letters("a", "_", "a")).to eq("a")
  end

  it "substitutes a line with 't'" do
    expect(subject.substitute_letters("t", "_", "t")).to eq("t")
  end

  it "substitutes a line with 'e'" do
    expect(subject.substitute_letters("e", "_", "e")).to eq("e")
  end

  it "substitutes 2 lines with the same 2 letters" do
    expect(subject.substitute_letters("a", "__", "aa")).to eq("aa")
  end

  it "substitutes the 2nd line with a letter" do
    expect(subject.substitute_letters("a", "__", "ba")).to eq("_a")
  end

  it "substitutes the first and third line with a letter" do
    expect(subject.substitute_letters("t", "___", "tat")).to eq("t_t")
  end

  it "substitutes all relevant lines with a letter" do
    expect(subject.substitute_letters("e", "_________", "eagerness")).to eq("e__e__e__")
  end

end
