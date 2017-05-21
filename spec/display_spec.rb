require 'display'

describe Display do
  subject {described_class.new}
  let(:output) { StringIO.new }


  it "displays characters to the user" do
    display = display_with(output)
    display.display_lines("_")
    expect(output.string).to eq("Word = _\n")
  end

  it "asks for user to enter a letter" do
    display = display_with(output)
    display.ask_for_letter
    expect(output.string).to eq("Please enter a letter\n")
  end

  it "gets letter input from a user" do
    input = StringIO.new("a")
    display = Display.new(output, input)
    expect(display.get_letter_input).to eq("a")
  end

  it "Draws first body part" do
    expect(subject.draw_body_part(1)).to eq("0")
  end

  it "Draws second body part" do
    expect(subject.draw_body_part(2)).to eq("|")
  end

  it "Draws the third body part" do
    expect(subject.draw_body_part(3)).to eq("-")
  end

  it "Draws the fourth body part" do
    expect(subject.draw_body_part(4)).to eq("-")
  end

  it "Draws the fifth body part" do
    expect(subject.draw_body_part(5)).to eq("\\")
  end

  it "Draws the sixth body part" do
    expect(subject.draw_body_part(6)).to eq("/")
  end

  it "Returns 'You win!' if guess = word" do
    display = display_with(output)
    display.display_you_win
    expect(output.string).to eq("You win! Woohoo!\n")
  end

  it "displays a body part to user" do
    display = display_with(output)
    display.display_body_part("0")
    expect(output.string).to include("0")
  end

  it "displays head and upper body parts to user" do
    display = display_with(output)
    display.display_body_part(["0", "|"])
    expect(output.string).to include("0", "|")
  end

  it "displays 3 body parts to user" do
    display = display_with(output)
    display.display_body_part(["0", "|", "-"])
    expect(output.string).to include("0", "|", "-")
  end

  it "displays 4 body parts to user" do
    display = display_with(output)
    display.display_body_part(["0", "|", "-", "-"])
    expect(output.string).to include("0", "-", "|", "-")
  end

  it "displays 5 body parts to user" do
    display = display_with(output)
    display.display_body_part(["0", "|", "-", "-", "\\"])
    expect(output.string).to include("0", "-", "|", "-", "\\")
  end

  it "displays 6 body parts to user" do
    display = display_with(output)
    full_body = """---
|\\0
|-|-
|/ \\
"""
    display.display_body_part(["0", "|", "-", "-", "\\", "/"])
    expect(output.string).to eq(full_body)
  end

  it "displays the original word" do
    display = display_with(output)
    display.display_original_word("n u t e l l a")
    expect(output.string).to eq("nutella\n")
  end

  it "displays a list of wrongly guessed letters" do
    display = Display.new(output)
    display.display_wrong_letters("z")
    expect(output.string).to eq("Wrong guesses: z\n")
  end

  def display_with(output)
    Display.new(output)
  end

end
