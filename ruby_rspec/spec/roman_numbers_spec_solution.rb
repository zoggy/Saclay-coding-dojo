require 'rspec'
require 'roman_numbers'

describe "Roman numbers" do

  context "convert base symbols (I, V, X, L, C...)" do
    it '0 does not convert!' do
      0.convert.should == ""
    end
    
    it 'should convert number 1 to numeral I' do
      1.convert.should == "I"
    end
    
    it 'should convert number 5 to numeral V' do
      5.convert.should == "V"
    end
    
    it 'should convert number 10 to numeral X' do
      10.convert.should == "X"
    end
    
    it 'should convert number 50 to numeral L' do
      50.convert.should == "L"
    end
    
    it 'should convert number 100 to numeral C' do
      100.convert.should == "C"
    end
  end
  
  context "convert additions" do
    it 'should convert number 2 to numeral II' do
      2.convert.should == "II"
    end
    
    it 'should convert number 3 to numeral III' do
      3.convert.should == "III"
    end
    
    it 'should convert number 18 to numeral XVIII' do
      18.convert.should == "XVIII"
    end
  end
  
  
  context "convert subtractions" do
    it 'should convert number 4 to numeral IV' do
      4.convert.should == "IV"
    end
    
    it 'should convert number 9 to numeral IX' do
      9.convert.should == "IX"
    end
    
    it 'should convert number 40 to numeral XL' do
      40.convert.should == "XL"
    end
    
    it 'should convert number 44 to numeral XLIV' do
      44.convert.should == "XLIV"
    end
    
    it 'should convert number 93 to numeral XCIII' do
      93.convert.should == "XCIII"
    end
  end
  
end