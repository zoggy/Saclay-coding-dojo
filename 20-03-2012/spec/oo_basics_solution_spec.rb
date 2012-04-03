require 'rspec'
require 'oo_basics_solution'

describe Person do
  
  it "should have the indicated name" do
    person = Person.new("Oscar", 60)
    person.name.should eq("Oscar")
  end
  
  it "should have the indicated age" do
    person = Person.new("Oscar", 60)
    person.age.should eq(60)
  end
  
  it "is old if it is above 60" do
    person = Person.new("Oscar", 61)
    person.is_old?.should eq(true)
  end
  
end

describe SoccerPlayer do
  
  it "is old if it is above 30" do
    player = SoccerPlayer.new("Oscar", 31)
    player.is_old?.should eq(true)
  end
  
end

describe Actor do
  
  it "is named Chuck Norris, so it is better to not ask his age" do
    player = Actor.new("Chuck Norris", 2**32 - 1)
    player.age.should raise_error
  end
  
end
