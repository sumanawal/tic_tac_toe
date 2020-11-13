# frozen_string_literal: true

describe Player do
  let(:player) { described_class.new }

  describe '#fetch_name' do
    let(:player_name) { 'Player1 Name' }
    subject(:fetch_name) { player.fetch_name }

    it 'takes string input as a player name' do
      expect(STDIN).to receive(:gets).and_return(player_name)
      fetch_name
      expect(player.name).to eql(player_name)
    end
  end

  describe '#fetch_symbol' do
    let(:default_symbol) { 'X' }
    let(:user_symbol) { 'Sym' }
    subject(:fetch_symbol) { player.fetch_symbol(default_symbol) }

    it 'takes string input as a symbol for player' do
      expect(STDIN).to receive(:gets).and_return(user_symbol)
      fetch_symbol
      expect(player.game_symbol).to eql(user_symbol)
    end

    context 'when user did not enter any symbol' do
      it 'sets default symbol for the player' do
        expect(STDIN).to receive(:gets).and_return('')
        fetch_symbol
        expect(player.game_symbol).to eql(default_symbol)
      end
    end
  end
end
