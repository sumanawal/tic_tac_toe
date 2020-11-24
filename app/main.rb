# frozen_string_literal: true

require_relative './board'
require_relative './game_mode'
require_relative './player'
require_relative './game'
require_relative './player_turn'
require_relative './result'
require_relative './computer_player'

puts "\t\tWelcome to Tic Tac Toe Game\n\n"
board = Board.new

board.show
# Set mode of the game (single player/two player)
game_mode = GameMode.new
mode = game_mode.fetch_mode
# Get info for first player
player1 = Player.new
player1.fetch_name
player1.fetch_symbol('X', 'O')
# Single Player Game
if mode == 1
  player2 = ComputerPlayer.new
  game_mode.human_first?
  player2.name = 'Computer'
  player2.game_symbol = (['X', '$', '*', 'O'] - [player1.game_symbol]).sample
else
  player2 = Player.new
  # Multiplayer Game
  # Set name and symbol for player 2
  player2.fetch_name
  player2.fetch_symbol('O', player1.game_symbol)
end

if mode == 1 && game_mode.first_move == 1
  # Start Play and get input from user
  game = Game.new(player2, player1, board)
else
  game = Game.new(player1, player2, board)
end
game.play



