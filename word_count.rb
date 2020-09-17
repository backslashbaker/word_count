class WordCount

    def count(string)
        words = string.gsub(/[^\sA-Za-z]+/, "").split(" ")
        frequency = Hash.new(0)
        words.each do |word| 
            frequency[word] += 1
        end
        return frequency
    end
end
