class Guesses

  def check_guess(guess, word)
    if word.include?(guess)
      true
    else
      false
    end
  end
  
end
