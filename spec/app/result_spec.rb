# frozen_string_literal: true

describe Result do
  let(:player) { Struct.new(:name, :game_symbol) }
  let(:player1) { player.new('Alex', 'X') }

  describe '#call' do
    subject(:result) do
      described_class.new(player1, board_values).call
    end

    context 'when game does not complete' do
      let(:board_values) { ['', '', '', 'X', '', '', '', '', ''] }
      it 'returns false' do
        expect(result).to be_falsey
      end
    end

    context 'when game complete' do
      let(:board_values) { ['Y', '', 'X', 'Y', '', 'X', '', '', 'X'] }

      it 'returns true' do
        expect(result).to be_truthy
      end
    end
  end

  describe '#won?' do
    subject(:won) do
      described_class.new(player1, board_values).send('won?')
    end

    let(:board_values) { ['Y', '', 'X', 'Y', '', 'X', '', '', 'X'] }

    it 'returns true' do
      expect(won).to be_truthy
    end
  end

  describe '#draw?' do
    let(:board_values) { ['X', 'Y', 'X', 'Y', 'X', 'X', 'Y', 'X', 'Y'] }
    subject(:draw) do
      described_class.new(player1, board_values).send('draw?')
    end

    it 'returns true' do
      expect(draw).to be_truthy
    end
  end
end
