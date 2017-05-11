require_relative 'lib/word_places'
require_relative 'lib/display'

word_places = WordPlaces.new
display = Display.new

lines = word_places.spaces("nutella")
display.display_lines(lines)
