class WordCount
    def count(string)
        words = remove_punctuation(string).downcase.split(" ")
        frequency = Hash.new(0)
        words.each do |word| 
            frequency[word] += 1
        end
        return frequency
    end

    private 

    def remove_punctuation(string)
       string.gsub(/[^'[:^punct:]]/, "")
    end
end