require_relative 'lib/word_places'
require_relative 'lib/display'
require_relative 'lib/guesses'
require_relative 'lib/game_flow'

word_places = WordPlaces.new
display = Display.new
guesses = Guesses.new
game_flow = GameFlow.new

game_flow.game_flow("nutella")
