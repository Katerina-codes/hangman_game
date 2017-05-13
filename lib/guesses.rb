class Guesses

  def check_guess(guess, word)
    word.include?(guess)
  end

  def guess_number(number_of_guesses)
    number_of_guesses
  end

  def increment_guess(number_of_guesses)
    1
  end
end
