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
  ##### I've refactored the block above to include the `subject` syntax => `subject = Zombie.new`
  it "has corrent initialization pt2 refactored" do
    subject.alive.should == false #Refactored below
    subject.alive.should be false
    subject.rotting.should == true #Refactored below
    subject.height.should >= 5
    subject.height.should_not < 5
  end

  it 'is hungry' do
    subject.hungry?.should == true #Refactored below
    subject.hungry?.should be true #Refactored again below
    subject.should be_hungry
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
    subject.weapons.count.should == 2 # refactored below if using active record
    # subject.should have(2).weapons
  end

  it 'changes the number of Zombies' do
    zombie = Zombie.new(name: 'Ash')
    expect { zombie.save }.to change { Zombie.count }.by(1)
  end

  it 'raises an error if saved without a name' do
    expect { subject.save! }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end

  it '#### satisfies these misc matchers' do
    subject.height.should be_within(4.9).of(5)  #is the range of height
    subject.should satisfy { |zombie| subject.hungry? }  #enter a block
    subject.weapons.should be_an_instance_of(Array) #duck typing
  end

  it '#### implicit receiver' do
    subject.should respond_to(:hungry?)  #duck typing
    should respond_to(:hungry?)  ##### implicit Receiver no need for `subject`
  end


  ### wow refactor
  it { should respond_to(:height)}
  it { should respond_to(:rotting)}
  it { should respond_to(:weapons)}
  it { should be_hungry }  # something tricky here  used be_hungry in replace of should_be hungry? for some reason i guess for readability

###############################
end

describe Zombie do
  context 'when hungry' do
    it 'craves brains' do
      should be_hungry
    end
    context 'with a veggie preference' do
      it 'still craves brains' do
        should be_hungry
      end
      subject { Zombie.new(veggie: true)}
      it 'prefers vegan brains' do
        should be_vegan
      end
    end
  end
end

