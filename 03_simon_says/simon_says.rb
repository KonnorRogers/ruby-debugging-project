#write your code here
def echo words
    words.to_s
end

def shout words
    words.to_s.upcase
end

def repeat (*args)
    if (args.size == 1)
        args.join.to_s + " " + args.join.to_s
    elsif (args.size == 2)
        string = ""
        args.pop.times do
            string += args.join.to_s + " "
        end
        string.strip
    end
end

def start_of_word (string, index)
    string[0...index]
    #.. includes the index number, ... excludes it
end

def first_word (string)
    array = string.chars
    new_string = ""
    
    array.each do |letter|
        break if (letter == " ")
        new_string += letter
    end

    new_string
end

def titleize (title)
    new_title = ""
    new_title = title.split.each{|i| i.capitalize!}.join(" ")
    new_title = new_title.gsub "And" , "and"
    new_title = new_title.gsub "Over", "over"
    new_title = new_title.gsub "The", "the"
    if (new_title[0..2] == "the")
        new_title[0] = "T"
    end

    new_title
end
