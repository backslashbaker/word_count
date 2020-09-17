require_relative ('../word_count')

describe WordCount do
    let!(:word_count) { WordCount.new }

    context "word count" do
       it "returns empty hash when passed null" do
          expect(word_count.count("")).to eq ({})
       end
    end

    context "word count" do
        it "counts one word" do
           expect(word_count.count("hello")).to eq ({ "hello" => 1 })
        end
     end

    context "word count" do
        it "counts other single words" do
            expect(word_count.count("sponge")).to eq ({ "sponge" => 1})
        end
    end

    context "word count" do
        it "counts same word twice" do
            expect(word_count.count("sponge sponge")).to eq ({ "sponge" => 2})
        end
    end

    context "word count" do
        it "counts other same words twice" do
            expect(word_count.count("hello hello")).to eq ({ "hello" => 2})
        end
    end

    context "edge cases" do
        it "doesn't count several spaces" do # e.g. "     "
            skip
        end
    end
 end