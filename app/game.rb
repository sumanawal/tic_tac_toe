# frozen_string_literal: true

# play the game
class Game
  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def play
    game_completed = false
    until game_completed
      player = PlayerTurn.new(@player1, @player2, @board.values).call
      puts player.name
      column_number = player.fetch_input(@board.values)
      until valid?(column_number)
        puts 'You enter invalid data.'
        column_number = player.fetch_input(@board.values)
      end
      @board.values[column_number - 1] = player.game_symbol
      @board.show
      game_completed = Result.new(player, @board.values).call
    end
  end

  private



  def valid?(column_number)
    column_number.is_a?(Integer) && column_number.between?(1, 9) && @board.values[column_number - 1].empty?
  end
end
