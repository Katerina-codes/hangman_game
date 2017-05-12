class Display

  def initialize(output = $stdout)
    @output = output
  end

  def display_lines(word_places)
    @output.puts "Word = " + word_places
  end

  def ask_for_letter
    @output.puts "Please enter a letter"
  end

end
