class PigLatinizer

  attr_accessor :input


  def piglatinize(input)
    if input.split.count > 1
      piglatinize_sentence(input)
    else
      piglatinize_word(input)
    end
  end


  def piglatinize_word(word)
    letters = word.split('')
    if letters.count > 1
      vowels = %w(a e i o u A E I O U)
      if !vowels.include?(letters[0]) && !vowels.include?(letters[1])
        if !vowels.include?(letters[2])
          first = letters.shift
          second = letters.shift
          third = letters.shift
          letters << "#{first}#{second}#{third}ay"
          letters.join
        else
          first = letters.shift
          second = letters.shift
          letters << "#{first}#{second}ay"
          letters.join
        end
      elsif vowels.include?(letters[0])
        letters << "way"
        letters.join
      else
        first = letters.shift
        letters << "#{first}ay"
        letters.join
      end
    elsif letters.count == 1
      letters << "way"
      letters.join
    end
  end

  def piglatinize_sentence(sentence)
    sentence.split(' ').map do |w|
      piglatinize(w)
    end.join(' ')
  end
end
