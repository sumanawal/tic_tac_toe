# frozen_string_literal: true

describe PlayerTurn do
  let(:player) { Struct.new(:name, :game_symbol) }
  describe '#call' do
    let(:player1) { player.new('player1', 'X') }
    let(:player2) { player.new('player2', 'Y') }
    subject(:player_turn) do
      described_class.new(player1, player2, board_values).call
    end

    context 'when board last filled by player1' do
      let(:board_values) { ['', '', '', 'X', '', '', '', '', ''] }

      it 'returns player2' do
        expect(player_turn).to eql(player2)
      end
    end

    context 'when board last filled by player2' do
      let(:board_values) { ['', '', '', 'X', 'Y', '', '', '', ''] }

      it 'returns player1' do
        expect(player_turn).to eql(player1)
      end
    end
  end
end
