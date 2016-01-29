require_relative "../../environment.rb"
require "spec_helper"

describe Zombie do
  it 'is name should be Ash' do
    zombie = Zombie.new(name: 'Ash')
    zombie.name.should == 'Ash'
  end

  it "has corrent initialization" do
    zombie = Zombie.new(name: 'Ash')
    zombie.brains.should < 1
    zombie.name.should == 'Ash'
    zombie.alive.should == false #Refactored below
    zombie.alive.should be false
    zombie.rotting.should == true #Refactored below
    zombie.height.should >= 5
    zombie.height.should_not < 5
  end

  it 'is hungry' do
    zombie = Zombie.new(name: 'Ash')
    zombie.hungry?.should == true #Refactored below
    zombie.hungry?.should be true #Refactored again below
    zombie.should be_hungry
  end

  ####to mark as pending or useful for debugging

  # it 'is pending "it"'
  # xit 'is pending "xit"' do
  #   true
  # end
  # it 'expected to fail BUT hightlights in BLUE' do
  #   pending
  # end

  # Regexp for the win!
  it "has a name that matches 'Ash Clone'" do
    zombie = Zombie.new(name: "Ash Clone 1")
    zombie.name.should match(/Ash Clone \d/)
  end

  it "starts with two weapons" do
    zombie = Zombie.new(name: 'Ash')
    zombie.weapons.count.should == 2 # refactored below if using active record
    # zombie.should have(2).weapons
  end

  it 'changes the number of Zombies' do
    zombie = Zombie.new(name: 'Ash')
    expect { zombie.save }.to change { Zombie.count }.by(1)
  end

  it 'raises an error if saved without a name' do
    zombie = Zombie.new
    expect { zombie.save! }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end

  it '#### satisfies these misc matchers' do
    zombie = Zombie.new(name: 'Ash')
    zombie.should respond_to(:hungry?)  #duck typing
    zombie.height.should be_within(4.9).of(5)  #is the range of height
    zombie.should satisfy { |zombie| zombie.hungry? }  #enter a block
    zombie.weapons.should be_an_instance_of(Array) #duck typing
  end


###############################

end