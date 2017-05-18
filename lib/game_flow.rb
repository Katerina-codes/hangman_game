class GameFlow

require_relative 'word_places'
require_relative 'display'
require_relative 'guesses'

def initialize(display = Display.new)
  @display = display
end

def game_flow(word)
  word_places = WordPlaces.new
  guesses = Guesses.new

  guess_number = 0
  lines = word_places.spaces(word)
  newest_word = ""

  until newest_word == word || guess_number == 6
    @display.display_lines(lines)
    @display.ask_for_letter
    guess = @display.get_letter_input

    if guesses.check_if_word_is_guessed?(guess, word)
      @display.display_you_win
      return
    end

    if guesses.letter_is_present?(guess, word)
      newest_word = word_places.substitute_letters(guess, lines, word)
    else
      guess_number += guesses.increment_guess(0)
      body_part = @display.draw_body_part(guess_number)
      @display.display_body_part(body_part)
    end
  end
  @display.display_original_word(word)
end

end
