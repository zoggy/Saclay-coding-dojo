require 'rspec'
require 'markov_generator'

describe MarkovGenerator do
  
  it "should add words with its correspondent frequence" do
    text = "The man is tall. The man is big."

    mc = MarkovGenerator.new
    mc.add_text(text)
    mc.get_words("is").should == {"big" => 1, "tall" => 1}
  end
  
  it "should consider dots as a word" do
    text = "The man is tall. The man is big."
    mc = MarkovGenerator.new
    mc.add_text(text)
    mc.get_words("tall").should == {"." => 1}
  end

  it "should compute frequencies from counters" do
    text = "The man is tall. The man is big."
    
    mc = MarkovGenerator.new
    mc.add_text(text)
    mc.get_frequencies("is").should == [[0.5, "big"], [0.5,"tall"]]
  end
  
end