class Guesses

  def check_guess(guess, word)
    word.include?(guess)
  end

  def guess_number(number_of_guesses)
    number_of_guesses
  end

  def increment_guess(number_of_guesses)
    number_of_guesses += 1
  end


  def check_input_is_valid(guess)
    alphabet = ("a".."z").to_a
    alphabet = alphabet.join
    if alphabet.include?(guess)
      guess
    else
      !alphabet.include?(guess)
      "Please enter a letter\n"
    end
  end

  def check_if_word_is_guessed?(guess, word)
    guess == word
  end
end
