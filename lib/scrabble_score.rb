class String
  define_method(:scrabble_score) do
    scrabble_word = self
    letter_score = {"a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 }
    word_score = 0

    if scrabble_word.empty?
      return false
    elsif scrabble_word.downcase().chars().each() do |letter|
      word_score = word_score.+(letter_score.fetch(letter))
    end
  end
    word_score
  end
end
