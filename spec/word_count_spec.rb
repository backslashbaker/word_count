require_relative ('../word_count')

describe WordCount do
    context "word count" do
       it "returns empty hash when passed null" do
          word_count = WordCount.new
          expect(word_count.count("")).to eq ({})
       end
    end

    context "word count" do
        it "counts one string" do
           word_count = WordCount.new
           expect(word_count.count("hello")).to eq ({ "hello" => 1 })
        end
     end

     context "word count" do
        it "counts other single strings" do
            word_count = WordCount.new
            expect(word_count.count("sponge")).to eq ({ "sponge" => 1})
        end
    end

    context "edge cases" do
        it "doesn't count several spaces" do # e.g. "     "
            skip
        end
    end
 end