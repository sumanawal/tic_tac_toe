# frozen_string_literal: true

# Get input for the game mode
class GameMode
  attr_reader :mode, :first_move

  # 0 for multiplayer and 1 for single player
  def fetch_mode
    puts "Please choose game mode. \n 1 for Single Player \n Any key for multiplayer"
    @mode = gets.chomp.to_i
  end

  def human_first?
    # 1 for compuer and 0 for player
    puts 'Please enter 1 to play computer first or any other key to play human first'
    @first_move = gets.chomp.to_i
  end
end
