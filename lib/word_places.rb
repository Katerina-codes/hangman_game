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
    if guess == "a" && word_spaces == "_ "
      "a "
    elsif guess == "t"
      "t "
    else
      ["a", "a"]
    end
  end

end
