require_relative 'lib/word_places'
require_relative 'lib/display'
require_relative 'lib/guesses'
require_relative 'lib/game_flow'

game_flow = GameFlow.new(Display.new, Guesses.new, WordPlaces.new)

words = File.open("words.txt", "r").gets.chomp  
game_flow.game_flow(words)
