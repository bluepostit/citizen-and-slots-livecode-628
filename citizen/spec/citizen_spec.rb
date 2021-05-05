require_relative '../citizen'

describe Citizen do
  describe '#can_vote?' do
    it 'returns true if the citizen is 18 years old' do
      john = Citizen.new('john', 'jones', 18)
      expect(john.can_vote?).to eq(true)
    end

    it 'returns false if the citizen is under 18 years old' do
      sheila = Citizen.new('sheila', 'smith', 17)
      expect(sheila.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'returns a string for the citizen\'s full name' do
      john = Citizen.new('john', 'jones', 18)
      expect(john.full_name).to eq('John Jones')
    end
  end
end
