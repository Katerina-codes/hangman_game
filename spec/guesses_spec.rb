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
    expect(subject.guess_counter).to eq("0")
  end

end
