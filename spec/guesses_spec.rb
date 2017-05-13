require 'guesses'

describe Guesses do

  subject { described_class.new }

  it "returns true if guessed letter is in word" do
    expect(subject.check_guess("a", "nutella")).to eq(true)
  end

  it "returns false if guessed letter isn't inside word" do
    expect(subject.check_guess("b", "nutella")).to eq(false)
  end

  it "starts at 0" do
    expect(subject.guess_number(0)).to eq(0)
  end

  it "Adds 1 guess to the counter" do
    expect(subject.guess_number(1)).to eq(1)
  end

  it "it adds 1 to each guess" do
    expect(subject.increment_guess(0)).to eq(1)
  end

end
