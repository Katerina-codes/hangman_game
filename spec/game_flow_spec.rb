require 'game_flow'

describe GameFlow do
  let(:guesses) { Guesses.new }
  let(:word_places) { WordPlaces.new }

  it "returns 'please enter a letter' until 6 guesses are up or word is guessed" do
    input = StringIO.new("z\nz\nz\nz\nz\nz\nz")
    output = StringIO.new
    display = Display.new(output, input)
    game_flow = GameFlow.new(display, guesses, word_places)
    game_flow.game_flow("nutella")
    expect(output.string).to include("Please enter a letter")
  end

  it "guesses the correct word" do
    input = StringIO.new("t\na\nn")
    output = StringIO.new
    display = Display.new(output, input)
    game_flow = GameFlow.new(display, guesses, word_places)
    game_flow.game_flow("tan")
    expect(output.string).to include("tan")
  end

end
