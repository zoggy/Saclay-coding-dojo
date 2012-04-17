require 'rspec'
require 'markov_generator'

describe MarkovGenerator do
  
  it "should add words with its correspondent frequence" do
    text = "The man is tall. The man is big."

    mc = MarkovGenerator.new(text)
    mc.transitions["is"].should == {"big" => 1, "tall" => 1}
  end
  
  it "should consider dots as a word" do
    text = "The man is tall. The man is big."
    mc = MarkovGenerator.new(text)
    mc.transitions["tall"].should == {"." => 1}
  end

  it "should compute frequencies from counters" do
    text = "The   man is tall. The man is big."
      
    mc = MarkovGenerator.new(text)
    mc.frequencies["is"].should == [[0.5, "big"], [0.5,"tall"]]
  end
  
  it "pick word corresponding to random number" do
    text = "The man is tall. The man is big."

    mc = MarkovGenerator.new(text)
    wd = mc.pick_word(0.8, "is")
    wd.should == "tall"
  end
  
  it "generate text with five phrases" do
    text = File.read("input/prince.txt")
    
    mc = MarkovGenerator.new(text)
    random_text = mc.generate("The", 50)
    random_text.split.count.should == 50
  end
  
end