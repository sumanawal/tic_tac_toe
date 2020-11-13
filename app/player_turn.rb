# frozen_string_literal: true

# Class to determine player turn
class PlayerTurn
  def initialize(player1, player2, board_values)
    @player1 = player1
    @player2 = player2
    @board_values = board_values
  end

  def call
    return @player2 if (@board_values.select(&:empty?).count % 2).zero?

    @player1
  end
end
