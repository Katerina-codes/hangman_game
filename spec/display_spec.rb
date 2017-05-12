require 'display'

describe Display do

  it "displays characters to the user" do
    output = StringIO.new
    display = Display.new(output)
    display.display_lines("_")
    expect(output.string).to eq("Word = _\n")
  end

  it "asks for user to enter a letter" do
    output = StringIO.new
    display = Display.new(output)
    display.ask_for_letter
    expect(output.string).to eq("Please enter a letter\n")
  end

end
