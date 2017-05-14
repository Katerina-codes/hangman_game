class WordPlaces

  def spaces(word)
    word_places = []
    word = word.split("")

    word.each do |character|
      word_places.push("_ ")
    end
    word_places
  end

  def substitute_letters(guess, word_places, word)
    letter_position = (0..word.length-1).select {|i| word[i] == guess}
    letter_position.each do |index|
    word_places[index] = guess
    end
    word_places
  end

end
