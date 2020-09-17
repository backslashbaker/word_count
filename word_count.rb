class WordCount

    def count(string)
        if string.empty?
            return {}
        else 
            return {string => 1}
        end
    end
end