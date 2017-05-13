class Display

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def display_lines(word_places)
    @output.puts "Word = " + word_places.to_s
  end

  def ask_for_letter
    @output.puts "Please enter a letter"
  end

  def get_letter_input
    @input.gets.chomp
  end

  def draw_body_part(guess_number)
    body_parts = {
      1 => "0",
      2 => "|",
      3 => "-"
    }
    body_parts[guess_number]
  end

end
