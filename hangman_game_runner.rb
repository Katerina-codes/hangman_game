require_relative 'lib/word_places'
require_relative 'lib/character_display'

word_places = WordPlaces.new
character_display = CharacterDisplay.new

lines = word_places.spaces("nutella")
character_display.display_lines(lines)
