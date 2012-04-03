class MarkovGenerator
  
  private
  
  def add_word word 
    @transitions[@prev_word] ||= {word => 0}
    @transitions[@prev_word][word] ||= 0
    @transitions[@prev_word][word] += 1
    @prev_word = word
  end
  
  def compute_frequencies
    freq_array = @transitions.map { |key, value|
          sum = 0.0
          value.each { |k, v| sum += v }
          [key, value.map { |k, v| [v / sum, k] }.sort]
      }
    @frequencies = Hash[freq_array]
  end
  
  public
  
  def add_text text
    text.scan(/\.|\?|\!|\w+/).each {|item| add_word(item)}
    compute_frequencies
  end
  
  def get_words(word)
    @transitions[word] || {}
  end
  
  def get_frequencies(word)
    @frequencies[word] || {}
  end
    
  def initialize 
    @prev_word = ""
    @transitions = {}
    @frequencies = {}
  end
end