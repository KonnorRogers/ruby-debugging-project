#write your code here
VOWELS = ["a", "e", "i", "o", "u"]
@counter = 0

def translate(words)
    words_array = words.split(" ")

    words_array.map! do |word|
        if (isVowel? (word))
        word += "ay"

        else
            continuingConsonants(word)
            array = word.chars

            @counter.times do
                last_letter = array.shift
                array.push(last_letter)
            end

            word = array.join.to_s + "ay"
        end
    end
    words_array.join(" ").to_s
end

def isVowel? word 
    VOWELS.each do |vowel|
        if (word[0] == vowel)
            return true
        end
    end
    return false
end

def continuingConsonants word
    @counter = 0
    word_array = word.chars

    if (word.include? "qu")
        @counter += 1
    end

    word_array.each do |letter|
        VOWELS.each do |vowel|
            if (vowel == letter)
                #BREAK LOOP
                return @counter
            end
        end
        @counter += 1
    end
end
