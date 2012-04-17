class MarkovGenerator
  
  attr_reader :frequencies
  
  attr_reader :transitions
  
  private
  
  def add_text(text)
    text.scan(/\.|\?|\!|\:|\,|\;|\-|\w+/).each {|item| 
      add_word(item)
    } 
  end
  
  def add_word word 
    @transitions[@prev_word] ||= {word => 0}
    @transitions[@prev_word][word] ||= 0
    @transitions[@prev_word][word] += 1
    @prev_word = word
  end
  
  def compute_frequencies
    freq_hash = @transitions.map { |key, value|
          sum = 0.0
          value.each { |k, v| sum += v }
          [key, value.map { |k, v| [v / sum, k] }.sort]
      }
    @frequencies = Hash[freq_hash]
  end
  
  public
  
  def initialize(text)
    @prev_word = ""
    @transitions = {}
    @frequencies = {}
    add_text(text)
    compute_frequencies
  end
  
  def pick_word(random_number, word)
    succ_list = @frequencies[word]
    freq_counter = 0.0
    
    succ_list.each { |freq, succ_word|
      freq_counter += freq
      return succ_word if freq_counter >= random_number
    }
  end
  
  def generate(first_word, max_phrase)
    generated_text = first_word + " " 
    prev = first_word
    
    until generated_text.split.count == max_phrase do
      rnd = Random.new
      prev = pick_word(rnd.rand(0.1..1.0),prev)
      generated_text << prev << " "
    end
    
    return generated_text
  end
  
end


