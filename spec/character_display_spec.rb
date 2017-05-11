require 'character_display'

describe CharacterDisplay do

  it "displays characters to the user" do
    character_display = CharacterDisplay.new
    expect(character_display.display_lines("_")).to eq("Word = _")
  end

end
