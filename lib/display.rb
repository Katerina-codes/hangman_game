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
    @output.puts "Word = " + letter_places.split("").join(" ")
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

  def display_body_part(parts)
    head, chest, left_arm, right_arm, left_leg, right_leg = parts
    @output.puts "---"
    @output.puts "|\\#{head}"
    @output.puts "|#{left_arm}" "#{chest}" "#{right_arm}"
    @output.puts "|#{right_leg}" " #{left_leg}"
  end

  def display_you_win
    @output.puts "You win! Woohoo!"
  end

  def display_original_word(word)
    word = word.delete(" ")
    @output.puts word
  end

end
