class RomanNumber
  
  attr_accessor :arabic
  
  SYMBOL = [
    [50, "L"],
    [10, "X"],
    [5, "V"],
    [1, "I"]
  ]
  
  def to_s
    number = ""
    
    temp_arabic = @arabic
    precedent_roman = ""
    
    SYMBOL.each { |arabic, roman|
      quotient = temp_arabic / arabic
      temp_arabic = temp_arabic % arabic

      if (quotient >= 4) then
        number = roman + precedent_roman
      else
          number += roman
        }
      end
      
      precedent_roman = roman
    }
    
    
    return number
  end
  
  
end