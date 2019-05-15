
class PigLatinizer

  def piglatinize(word)

    array = word.split(" ")
    answer = array.map do |word|

      if "qwrtypsdfghjklzxcvbnmQWRTYPSDFGHJKLZXCVBNM".include?(word[0])
        word1 = word.split("")
        vow = word1.select do |letter|
          "aoeiu".include?(letter)
        end
        move = word.split(vow[0]).first
        move.length.times do
          word.slice!(0)
        end
        word << move
        word << "a"
        word << "y"
        word
      else
        word = word.split("")
        word <<["w","a","y"]
        word.flatten.join("")
      end
    end

    answer.join(" ")

  end

end
