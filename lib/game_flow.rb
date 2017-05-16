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
  newest_word = []

  until newest_word == word || guess_number == 6
    @display.display_lines(lines)
    @display.ask_for_letter
    letter = @display.get_letter_input
    guess_checker = guesses.check_guess(letter, word)
    if guess_checker
      newest_word = word_places.substitute_letters(letter, lines, word)
    else
      body_parts = []
      guess_number += guesses.increment_guess(0)
      body_part = @display.draw_body_part(guess_number)
      body_parts.push(body_part)
      @display.display_body_part(body_parts)
    end
  end
  @display.display_lines(newest_word)
  newest_word
end

end
