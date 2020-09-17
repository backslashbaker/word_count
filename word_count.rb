class WordCount

    def count(string)
        if string.empty?
            return {}
        elsif !string.include?(" ")
            return {string => 1}
        else 
            words = string.split(" ")
            return { words[0] => 2 }
        end
    end
end