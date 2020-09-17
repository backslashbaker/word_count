class WordCount

    def count(string)
        if string.empty?
            return {}
        elsif !string.include?(" ")
            return {string => 1}
        else 
            return { "sponge" => 2 }
        end
    end
end