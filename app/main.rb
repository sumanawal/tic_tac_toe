# frozen_string_literal: true

require_relative './player'

# Set name and symbol for players
player1 = Player.new
player1.fetch_name
player1.fetch_symbol('X')
player2 = Player.new
player2.fetch_name
player2.fetch_symbol('O')



