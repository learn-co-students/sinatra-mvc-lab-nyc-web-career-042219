#the formatting of the pig latin should go here.

class PigLatinizer
    attr_reader :text

    def piglatinize_word(text)
        first_letter = text[0].downcase

        vowels = ["a", "e", "i", "o", "u"]

        if vowels.include?(first_letter) == true
           "#{text}way"
        else
            consonants = []
            consonants << text[0]

            if vowels.include?(text[1]) == false
                consonants << text[1]
                if vowels.include?(text[2]) == false
                    consonants << text[2]
                end
            end
            "#{text[consonants.length..-1] + consonants.join + "ay"}"
        end
    end

    def piglatinize(string)
        a = string.split(" ")
        b = a.map {|word| piglatinize_word(word)}
        b.join(" ")
    end
end