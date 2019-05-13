class PigLatinizer

  def piglatinize(string)
    if string.include?(" ")
      string.split(" ").map do |word|
        piglatinize(word)
      end.join(" ")
    else
      alphabet = ('a'..'z').to_a
      vowels = %w[a e i o u]
      consonants = alphabet - vowels
      #vowel check
      if vowels.include?(string[0].downcase)
        string + "way"
      #triple consonant check
      elsif consonants.include?(string[0].downcase) && consonants.include?(string[1].downcase) && consonants.include?(string[2].downcase)
        string[3..-1] + string[0..2] + "ay"
      elsif consonants.include?(string[0].downcase) && consonants.include?(string[1].downcase)
        string[2..-1] + string[0..1] + "ay"
      elsif consonants.include?(string[0].downcase)
        string[1..-1] + string[0] + "ay"
      end
    end
  end
end
