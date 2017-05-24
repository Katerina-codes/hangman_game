class RandomWordSelector

  def get_word
    File.open("words.txt", "r").gets.chomp
  end

end
