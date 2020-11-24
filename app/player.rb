# frozen_string_literal: true

# Get player name input
class Player
  attr_accessor :name, :game_symbol

  def fetch_name
    puts 'Please enter name of player:'
    @name = STDIN.gets.chomp
  end

  def fetch_symbol(default, another_player_symbol = nil)
    puts "Please choose the prefered symbol. default will be #{default}:"
    input_symbol = STDIN.gets.chomp.upcase
    @game_symbol = input_symbol.empty? ? default : input_symbol
    while @game_symbol == another_player_symbol || @game_symbol.empty?
      puts "Symbol '#{@game_symbol}' is either invalid or has been selected by another user. \nPlease enter another symbol"
      @game_symbol = STDIN.gets.chomp.upcase
    end
  end

  def fetch_input(board_values)
    puts 'Enter the the number between 1-9 which has not been filled up'
    STDIN.gets.chomp.to_i
  end
end
