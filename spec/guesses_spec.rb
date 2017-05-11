require 'guesses'

describe Guesses do

  it "returns true if guessed letter is in word" do
    guesses = Guesses.new
    expect(guesses.check_guess("a")).to eq(true)
  end

  it "returns false if guessed letter isn't inside word" do
    guesses = Guesses.new
    expect(guesses.check_guess("b")).to eq(false)
  end

end
