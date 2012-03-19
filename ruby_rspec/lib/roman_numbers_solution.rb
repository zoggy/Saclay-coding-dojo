class Fixnum
  
  SYMBOLS = {
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  
  def convert
    result = ""
    
    number = self
    SYMBOLS.each { |arabic, roman|
      while (number >= arabic) do
        result += roman
        number -= arabic
      end  
    }
    
    return result
  end
  
end