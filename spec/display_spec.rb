require 'display'

describe Display do

  it "displays characters to the user" do
    display = Display.new
    expect(display.display_lines("_")).to eq("Word = _")
  end

  it "asks for user to enter a letter" do
    display = Display.new
    expect(display.ask_for_letter).to eq("Please enter a letter")
  end

end
