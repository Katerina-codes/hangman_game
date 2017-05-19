require_relative 'lib/word_places'
require_relative 'lib/display'
require_relative 'lib/guesses'
require_relative 'lib/game_flow'

game_flow = GameFlow.new(Display.new, Guesses.new, WordPlaces.new)

game_flow.game_flow("nutella")
