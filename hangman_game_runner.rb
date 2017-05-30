require_relative 'lib/word_places'
require_relative 'lib/display'
require_relative 'lib/guesses'
require_relative 'lib/game_flow'
require_relative 'lib/random_word_selector'

game_flow = GameFlow.new(Display.new, Guesses.new, WordPlaces.new)
word_selector = RandomWordSelector.new
word = word_selector.get_random_word("words.txt")
game_flow.game_flow(word)
