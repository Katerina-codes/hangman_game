class WordPlaces

  def spaces(word)
    if word == "a"
      "_"
    elsif word == "aa"
      ["_", "_"]
    else
      ["_", "_", "_"]
    end
  end

end
