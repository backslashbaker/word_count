require_relative ('../word_count')

describe WordCount do
    context "word count" do
       it "returns empty hash when passed null" do
          word_count = WordCount.new
          expect(word_count.count("")).to eq ({})
       end
    end
 end