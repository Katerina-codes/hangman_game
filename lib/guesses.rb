class Guesses

  def check_guess(guess, word)
    word.include?(guess)
  end

  def wrong_guess_counter(number_of_guesses)
    number_of_guesses
  end

end
