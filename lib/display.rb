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
    @input.gets.chomp.downcase.to_s
  end

  def check_input_is_valid(guess)
    alphabet = ("a".."z").to_a
    alphabet = alphabet.join
    if alphabet.include?(guess)
      guess
    else
      !alphabet.include?(guess)
      "Please enter a letter\n"
    end
  end

  def draw_body_part(guess_number)
    BODY_PARTS[guess_number]
  end

  def display_body_part(a = "", b = "")
    @output.puts "#{a}"
    @output.print "#{b}"
  end

end
