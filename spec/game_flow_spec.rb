require 'game_flow'

describe GameFlow do
  let(:guesses) { Guesses.new }
  let(:word_places) { WordPlaces.new }

  it "returns 'please enter a letter' if letter was not in word" do
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

  it "tests that one body part is printed when guess in invalid" do
    input = StringIO.new("z\nnutella")
    output = StringIO.new
    display = Display.new(output, input)
    game_flow = GameFlow.new(display, guesses, word_places)
    game_flow.game_flow("nutella")
    expect(output.string).to include("0")
  end

  it "Tests that body parts are printed when guess is invalid" do
    input = StringIO.new("z\nz\nz\nz\nz\nz\n")
    output = StringIO.new
    display = Display.new(output,input)
    game_flow = GameFlow.new(display, guesses, word_places)
    game_flow.game_flow("n")
    expect(output.string).to include("---", "|", "\\", "0", "|", "-", "|", "-", "|", "/", "\\")
  end

  it "Tests you can guess a word in one go" do
    input = StringIO.new("jam\n")
    output = StringIO.new
    display = Display.new(output,input)
    game_flow = GameFlow.new(display, guesses, word_places)
    game_flow.game_flow("jam")
    expect(output.string).to include("You win! Woohoo!")
  end

end
