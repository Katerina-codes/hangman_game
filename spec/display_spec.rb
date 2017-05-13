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

  it "gets letter input from a user" do
    input = StringIO.new("a")
    display = Display.new(output, input)
    expect(display.get_letter_input).to eq("a")
  end

  it "Draws first body part" do
    display = Display.new
    expect(display.draw_body_part(1)).to eq("0")
  end

  it "Draws second body part" do
    display = Display.new
    expect(display.draw_body_part(2)).to eq("|")
  end

end
