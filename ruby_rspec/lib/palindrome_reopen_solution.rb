# Determine whether a given word or phrase is a palindrome. Ignore case, ponctuation and nonwords characters.

class String
  
  def palindrome?
    param = self.downcase
    
    # Removing non character
    param = param.gsub(/\W/, "")
    
    # Palindrome verification
    if (param.reverse == param) then
      return true
    end
  
    return false
  
  end
  
end