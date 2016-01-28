require "spec_helper"
require "zombie"

describe Zombie do
  it 'is name should be Ash' do
    zombie = Zombie.new('Ash')
    zombie.name.should == 'Ash'
  end

  it "has corrent initialization" do
    zombie = Zombie.new('Ash')
    zombie.brains.should < 1
    zombie.name.should == 'Ash'
    zombie.alive.should == false #Refactored below
    zombie.alive.should be false
    zombie.rotting.should == true #Refactored below
    zombie.height.should >= 5
    zombie.height.should_not < 5
  end
end
############################### first example