

class Book
    def title
        @title
    end

    def title=(string)
        array = string.split(" ")
        #at every space the word is stored into the array
        new_string = ""

        lowercase_words = ["a", "an", "and",  "the", "this", "is" , "in", "of" ]
        #list to crosscheck

        #iterates through each word in the array
        array.each do |word|
           if (lowercase_words.include? (word.downcase) )
                new_string += word.downcase + " "
                #all lowercase_words are automatically downcased
           else
                new_string += word.capitalize + " "
           end
        end

        
        #catches if the lowercase_word is the first word
        chars = new_string.chars
        #creates the array
        first_letter = chars[0]
        #takes the first letter. capitalizes it, the joins it back to form the same string
        first_letter.capitalize!

        chars[0] = first_letter
        new_string = chars.join("")


        @title = new_string.strip
        
    end

end