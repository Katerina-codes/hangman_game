class Guesses

  def check_guess(guess, word)
    word.include?(guess)
  end

  def guess_counter
    "0"
  end

end
