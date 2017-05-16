require 'guesses'

describe Guesses do

  subject { described_class.new }

  it "returns true if guessed letter is in word" do
    expect(subject.check_guess("a", "nutella")).to eq(true)
  end

  it "returns false if guessed letter isn't inside word" do
    expect(subject.check_guess("b", "nutella")).to eq(false)
  end

  it "prompts again for a letter if input is a number" do
    expect(subject.check_input_is_valid("0")).to eq("Please enter a letter\n")
  end

  it "prompts again for a letter if input is a punctuaton mark" do
    expect(subject.check_input_is_valid("!")).to eq("Please enter a letter\n")
  end

  it "returns 'win' if guess equals word" do
    expect(subject.check_if_word_is_guessed("nutella", "nutella")).to eq("Winner!")
  end

  it "starts at 0" do
    expect(subject.guess_number(0)).to eq(0)
  end

  it "Adds 1 guess to the counter" do
    expect(subject.guess_number(1)).to eq(1)
  end

  it "Returns 1 if guess number is 0" do
    expect(subject.increment_guess(0)).to eq(1)
  end

  it "Returns 2 if guess number is 1" do
    expect(subject.increment_guess(1)).to eq(2)
  end

  it "Returns 3 if guess number is 2" do
    expect(subject.increment_guess(2)).to eq(3)
  end

end
