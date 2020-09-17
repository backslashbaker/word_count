class WordCount

    def count(string)
        counter = 0
        if string.empty?
            return {}
        elsif !string.include?(" ")
            return {string => 1}
        else 
            words = string.split(" ")
            return { words[0] => words.count }
        end
    end
end
