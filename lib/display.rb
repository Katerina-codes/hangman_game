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
    if guess_number == 1
      "0"
    elsif guess_number == 2
      "|"
    elsif guess_number == 3
      "-"
    end
  end

end
