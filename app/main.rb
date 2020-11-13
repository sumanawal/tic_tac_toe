# frozen_string_literal: true

require_relative './board'
require_relative './player'
require_relative './game'
require_relative './player_turn'
require_relative './result'

puts "\t\tWelcome to Tic Tac Toe Game\n\n"
board = Board.new

board.show
# Set name and symbol for players
player1 = Player.new
player1.fetch_name
player1.fetch_symbol('X')
player2 = Player.new
player2.fetch_name
player2.fetch_symbol('O')

# Start Play and get input from user
game = Game.new(player1, player2, board)
game.play




