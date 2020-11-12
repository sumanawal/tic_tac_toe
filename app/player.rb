# frozen_string_literal: true

# Get player name input
class Player
  attr_reader :name, :game_symbol

  def fetch_name
    puts 'Please enter name of player:'
    @name = STDIN.gets.chomp
  end

  def fetch_symbol(default)
    puts "Please choose the prefered symbol. default will be #{default}:"
    input_symbol = STDIN.gets.chomp
    @game_symbol = input_symbol.empty? ? default : input_symbol
  end
end
