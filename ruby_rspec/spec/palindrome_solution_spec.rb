require 'rspec'

describe "Abracadabra" do
  
  it "should not be a palindrome" do
    require 'palindrome_solution'
    
    palindrome?("Abracadabra").should eq(false)
  end
  
end

describe "A man, a plan, a canal -- Panama" do
  
  it "should be a palindrome" do
    require 'palindrome_solution'
    
    palindrome?("A man, a plan, a canal -- Panama").should eq(true)
  end
  
end