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
            expect(word_count.count("sponge")).to eq ({ "sponge" => 1 })
        end
    end

    context "word count" do
        it "counts same word twice" do
            expect(word_count.count("sponge sponge")).to eq ({ "sponge" => 2 })
        end
    end

    context "word count" do
        it "counts other same words twice" do
            expect(word_count.count("hello hello")).to eq ({ "hello" => 2 })
        end
    end

    context "word count" do
        it "counts other same words more than twice" do
            expect(word_count.count("fish fish fish")).to eq ({ "fish" => 3 })
        end
    end

    context "word count" do
        it "counts different words" do
            expect(word_count.count("fish sponge")).to eq ({ "fish" => 1,
        "sponge" => 1 })
        end
    end

    context "word count" do
        it "counts for more complex strings" do
            expect(word_count.count("olly olly in come free")).to eq ({ 
                "olly" => 2,
                "in" => 1,
                "come" => 1,
                "free" => 1
            })
        end
    end

    context "edge cases" do
        it "doesn't count several spaces" do
            expect(word_count.count("       ")).to eq ({})
        end
    end

    context "edge cases" do
        it "isn't confused by punctuation within words" do
            expect(word_count.count("car: carpet as java: javascript!!&@$%^&")).to eq ({
                "car" => 1, 
                "carpet" => 1, 
                "as" => 1, 
                "java" => 1, 
                "javascript" => 1
            })
        end
    end

    context "edge cases" do
        it "isn't affected by capitals" do
            expect(word_count.count("Hello FISH fish spongE")).to eq ({
                "hello" => 1, 
                "fish" => 2, 
                "sponge" => 1
            })
        end
    end

    context "edge cases" do
        it "isn't affected by new lines" do
            expect(word_count.count("hello \nfish fish")).to eq ({
                "hello" => 1, 
                "fish" => 2 
            })
        end
    end

 end