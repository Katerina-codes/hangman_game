class WordPlaces

  def spaces(word)
    x = []
    word = word.split("")

    word.each do |character|
      x.push("_ ")
    end
    x
  end

  def substitute_letters(guess, word_spaces)
    "a "
  end

end
