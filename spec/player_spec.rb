require 'player'

describe Player do
  subject(:Robert) { described_class.new('Robert') }
  let(:dave) {Player.new('Dave')}
  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq("Robert")
    end
  end

  describe '#attack' do
    it 'reduces opponents hp by 10' do
      expect { subject.attack(dave) }.to change{ dave.hp }.by(-10)
    end
  end

  describe '#receive_damage' do
    it 'damages player by 10 hit points' do
      expect {subject.receive_damage }.to change{ subject.hp }.by(-10)
    end
  end
end