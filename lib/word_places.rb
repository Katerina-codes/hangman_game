class WordPlaces

  def spaces(word)
    x = []
    word = word.split("")

    word.each do |character|
      x.push("_ ")
    end
    x
  end

  def substitute_letters(guess, word_spaces, word)
    letter_position = (0..word.length-1).select {|i| word[i] == guess}
    letter_position.each do |index|
    word_spaces[index] = guess
    end
    word_spaces
  end

end
