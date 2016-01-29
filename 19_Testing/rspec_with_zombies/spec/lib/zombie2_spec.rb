describe Zombie do
  context 'when hungry' do
    it 'craves brains' do
      should be_hungry
    end
    context 'with a veggie preference' do
      it 'still craves brains' do
        should be_hungry
      end
      let(:axe) { Weapon.new( name: 'axe' ) }
      subject { Zombie.new(vegan: true, weapons: [axe])}
      its(:weapons) { should include(axe)}
      it 'prefers vegan brains' do
        should be_vegan
      end
    end
  end
end