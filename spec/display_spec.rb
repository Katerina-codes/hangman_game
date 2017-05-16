require 'display'

describe Display do
  let(:output) { StringIO.new }

  it "displays characters to the user" do
    display = Display.new(output)
    display.display_lines("_")
    expect(output.string).to eq("Word = _\n")
  end

  it "asks for user to enter a letter" do
    display = Display.new(output)
    display.ask_for_letter
    expect(output.string).to eq("Please enter a letter\n")
  end

  it "gets letter input from a user" do
    input = StringIO.new("a")
    display = Display.new(output, input)
    expect(display.get_letter_input).to eq("a")
  end

  it "prompts again for a letter if input is a number" do
    display = Display.new
    expect(display.check_input_is_valid("0")).to eq("Please enter a letter\n")
  end

  it "prompts again for a letter if input is a punctuaton mark" do
    display = Display.new
    expect(display.check_input_is_valid("!")).to eq("Please enter a letter\n")
  end

  it "Draws first body part" do
    display = Display.new
    expect(display.draw_body_part(1)).to eq("0")
  end

  it "Draws second body part" do
    display = Display.new
    expect(display.draw_body_part(2)).to eq("|")
  end

  it "Draws the third body part" do
    display = Display.new
    expect(display.draw_body_part(3)).to eq("-")
  end

  it "Draws the fourth body part" do
    display = Display.new
    expect(display.draw_body_part(4)).to eq("-")
  end

  it "Draws the fifth body part" do
    display = Display.new
    expect(display.draw_body_part(5)).to eq("\\")
  end

  it "Draws the sixth body part" do
    display = Display.new
    expect(display.draw_body_part(6)).to eq("/")
  end

  it "displays a body part to user" do
    display = Display.new(output)
    display.display_body_part("0")
    expect(output.string).to eq("0\n")
  end

  # it "displays a body part to user" do
  #   display = Display.new(output)
  #   display.display_body_part("0", "|")
  #   expect(output.string).to eq("0\n|")
  # end

end
