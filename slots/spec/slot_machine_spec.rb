require_relative '../slot_machine'

def test_scenario(reels, expected_score)
  it "returns #{expected_score} for #{reels.join('-')}" do
    bobby = SlotMachine.new
    expect(bobby.score(reels)).to eq(expected_score)
  end
end

describe SlotMachine do
  describe '#score' do
    # 3 different items
    it 'returns 0 for 3 different items' do
      bobby = SlotMachine.new
      expect(bobby.score(%w[joker star seven])).to eq(0)
    end

    # 3-of-a-kind
    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)

    # 2-of-a-kind
    test_scenario(%w[joker joker star], 25)
    test_scenario(%w[star joker star], 20)
    test_scenario(%w[bell joker bell], 15)
    test_scenario(%w[seven joker seven], 10)
    test_scenario(%w[cherry cherry joker], 5)
  end
end
