class Guesses

  def letter_is_present?(guess, word)
    word.include?(guess)
  end

  def check_input_is_valid?(guess)
    alphabet = ("a".."z").to_a.join
    alphabet.include?(guess)
  end

  def check_if_word_is_guessed?(guess, word)
    guess == word
  end
end
