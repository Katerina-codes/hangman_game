require "random_word_selector"

describe RandomWordSelector do
  it "reads in a word from another file" do
    random_word_selector = RandomWordSelector.new
    expect(random_word_selector.get_word).to eq("nutella")
  end

end
