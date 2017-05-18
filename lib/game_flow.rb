class GameFlow

require_relative 'word_places'
require_relative 'display'
require_relative 'guesses'

def initialize(display = Display.new, guesses = Guesses.new, word_places = WordPlaces.new)
  @display = display
  @guesses = guesses
  @word_places = word_places
end

def game_flow(word)
  guess_number = 0
  lines = @word_places.spaces(word)
  newest_word = ""
  parts = []

  until newest_word == word || guess_number == 6
    @display.display_lines(lines)
    @display.ask_for_letter
    guess = @display.get_letter_input

    if @guesses.check_if_word_is_guessed?(guess, word)
      @display.display_you_win
      newest_word = word
    elsif @guesses.letter_is_present?(guess, word)
      newest_word = @word_places.substitute_letters(guess, lines, word)
    else
      guess_number += 1
      body_part = @display.draw_body_part(guess_number)
      parts.push(body_part)
      @display.display_body_part(parts)
    end
  end
  @display.display_original_word(word)
end

end
