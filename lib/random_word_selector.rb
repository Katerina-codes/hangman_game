class RandomWordSelector

  def get_random_word(word_file)
    File.open(word_file).readlines.map(&:chomp).sample
  end

end
