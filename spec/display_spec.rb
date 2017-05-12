require 'display'

describe Display do

  it "displays characters to the user" do
    display = Display.new
    expect(display.display_lines("_")).to eq("Word = _")
  end

end
