require 'rspec'
require 'roman_numbers'

describe "Roman numbers" do
  
  before :each do
    @roman = RomanNumber.new
  end
  
  context "Transformation of symbol (I, V, X...)" do
    it "1 should be transformed to I" do
      @roman.arabic = 1
      @roman.to_s.should == "I"
    end
    
    it "4 should be transformed to IV" do
      @roman.arabic = 4
      @roman.to_s.should == "IV"
    end
    
    it "5 should be transformed to V" do
      @roman.arabic = 5
      @roman.to_s.should == "V"
    end
    
    it "9 should be transformed to IX" do
      @roman.arabic = 9
      @roman.to_s.should == "IX"
    end
    
    it "10 should be transformed to X" do
      @roman.arabic = 10
      @roman.to_s.should == "X"
    end
    
    it "50 should be transformed to L" do
      @roman.arabic = 50
      @roman.to_s.should == "L"
    end
    
  end
  
  
  context "Transformation additions" do 
    it "2 should be transformed to II" do
      @roman.arabic = 2
      @roman.to_s.should == "II"
    end
    
    it "3 should be transformed to III" do
      @roman.arabic = 3
      @roman.to_s.should == "III"
    end
    
    it "8 should be transformed to VIII" do
      @roman.arabic = 8
      @roman.to_s.should == "VIII"
    end
    
    it "27 should be transformed to XXVII" do
      @roman.arabic = 27
      @roman.to_s.should == "XXVII"
    end
  end
  
  context "Transforming subtraction" do
    it "40 should be transformed to XL" do
      @roman.arabic = 40
      @roman.to_s.should == "XL"
    end
  end
  
end