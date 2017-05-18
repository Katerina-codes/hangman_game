require 'guesses'

describe Guesses do

  subject { described_class.new }

  it "returns true if guessed letter is in word" do
    expect(subject.letter_is_present?("a", "nutella")).to eq(true)
  end

  it "returns false if guessed letter isn't inside word" do
    expect(subject.letter_is_present?("b", "nutella")).to eq(false)
  end

  it "prompts again for a letter if input is a number" do
    expect(subject.check_input_is_valid?("0")).to eq(false)
  end

  it "prompts again for a letter if input is a punctuaton mark" do
    expect(subject.check_input_is_valid?("!")).to eq(false)
  end

  it "returns true if guess equals word" do
    expect(subject.check_if_word_is_guessed?("nutella", "nutella")).to eq(true)
  end

  it "returns false if guess equals word" do
    expect(subject.check_if_word_is_guessed?("boo", "nutella")).to eq(false)
  end

end
