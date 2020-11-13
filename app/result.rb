# frozen_string_literal: true

# class to find game completed or not and return result
class Result
  WIN_COMBINATIONS = [
    [0, 1, 2], # top_row
    [3, 4, 5], # middle_row
    [6, 7, 8], # bottom_row
    [0, 3, 6], # left_column
    [1, 4, 7], # center_column
    [2, 5, 8], # right_column
    [0, 4, 8], # left_diagonal
    [6, 4, 2] # right_diagonal
  ].freeze

  def initialize(player, board_values)
    @player = player
    @board_values = board_values
  end

  def call
    won? || draw?
  end

  private

  def won?
    player_inputs_indices = @board_values.each_index.select { |index| @board_values[index].eql?(@player.game_symbol) }
    win = false
    WIN_COMBINATIONS.each do |win_combination|
      next unless (win_combination - player_inputs_indices).count.zero?

      win = true
      puts "Game completed winner is: #{@player.name}"
      break
    end
    win
  end

  def draw?
    game_drawn = @board_values.select(&:empty?).count.zero?
    puts 'Game is draw. Please try again' if game_drawn
    game_drawn
  end
end
