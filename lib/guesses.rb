class Guesses

  def check_guess(guess, word)
    word.include?(guess)
  end

  def wrong_guess_counter(guess)
    if guess == 0
      0
    else
      1
    end
  end

end
