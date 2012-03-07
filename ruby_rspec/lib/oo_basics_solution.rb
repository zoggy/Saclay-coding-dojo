# Based on the age of the person and its profession, we will determine if he is old

class ChuckNorrisError < StandardError ; end

class Person
  
  @attr_accessor name, age
  
  def initialize(name, age)
    @age = age
  end
  
  def is_old?
    if (@age > 40) then
      return true
    end
    
    return false
  end
  
  def to_s
    return "#{@name}, #{@age} years old." 
  end
  
end

class SoccerPlayer < Person
  
  def is_old?
    if (@age > 30) then
      return true
    end
    
    return false
  end
  
end

class Actor < Person
  
  def to_s
    if (@name.downcase == "Chuck Norris")
      raise ChuckNorrisError
    end
    
    return super
  end
  
end