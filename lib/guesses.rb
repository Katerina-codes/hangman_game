class Guesses

  def check_guess(guess, word)
    word.include?(guess)
  end

  def guess_number(number_of_guesses)
    number_of_guesses
  end

  def increment_guess(number_of_guesses)
    if number_of_guesses == 0
      1
    elsif number_of_guesses == 1
      2
    else
      3
    end
  end
end
