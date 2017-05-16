require_relative 'guesses'

class Display
  BODY_PARTS = {
    1 => "0",
    2 => "|",
    3 => "-",
    4 => "-",
    5 => "\\",
    6 => "/"
  }

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def display_lines(letter_places)
    @output.puts "Word = " + letter_places.to_s
  end

  def ask_for_letter
    @output.puts "Please enter a letter"
  end

  def get_letter_input
    guesses = Guesses.new

    guess = @input.gets.chomp.downcase.to_s

    if guess == "nutella"
      guess
    elsif guesses.check_input_is_valid?(guess)
      guess
    else
      ask_for_letter
      get_letter_input
    end
  end

  def draw_body_part(guess_number)
    BODY_PARTS[guess_number]
  end

  def display_body_part(a = "", b = "")
    @output.puts "#{a}"
    @output.print "#{b}"
  end

  def display_you_win
    @output.puts "You win! Woohoo!"
  end

end
