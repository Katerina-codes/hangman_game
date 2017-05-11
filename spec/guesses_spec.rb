require 'guesses'

describe Guesses do

  it "returns true if guessed letter is in word" do
    guesses = Guesses.new
    expect(guesses.check_guess("a")).to eq(true)
  end

end
