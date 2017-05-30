require "random_word_selector"

describe RandomWordSelector do

  it "reads in a random word from another file" do
    random_word_selector = RandomWordSelector.new

    expect(random_word_selector.get_random_word("one_word.txt")).to eq("nutella")
  end

end
