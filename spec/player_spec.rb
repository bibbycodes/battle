require 'player'

describe Player do
  subject(:Robert) { described_class.new('Robert') }

  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq("Robert")
    end
  end
end