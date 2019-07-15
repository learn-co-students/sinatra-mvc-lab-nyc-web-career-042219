class PigLatinizer

  def piglatinize(words)
    words_array = words.split
    words_array.map do |word|
      if vowel?(word[0])
        word << 'w'
      elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
        word = word.slice(3..-1) + word.slice(0, 3)
      elsif !vowel?(word[0]) && !vowel?(word[1])
        word = word.slice(2..-1) + word.slice(0, 2)
      else
        word = word.slice(1..-1) + word.slice(0)
      end
      word << 'ay'
    end.join(" ")
  end

  private

  def vowel?(letter)
    !!letter.match(/[aeiouAEIOU]/)
  end

end