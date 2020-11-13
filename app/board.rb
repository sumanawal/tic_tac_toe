# frozen_string_literal: true

# Tic Tac Toe Board with users input
class Board
  attr_accessor :values
  HORIZONTAL_SEPERATOR = '------------------'

  def initialize(user_inputs = [])
    @values = valid?(user_inputs) ? user_inputs : ['', '', '', '', '', '', '', '', '']
  end

  def show
    puts "####################\n\n"
    puts "#{column_value(0)} | #{column_value(1)} | #{column_value(2)}"
    puts HORIZONTAL_SEPERATOR
    puts "#{column_value(3)} | #{column_value(4)} | #{column_value(5)}"
    puts HORIZONTAL_SEPERATOR
    puts "#{column_value(6)} | #{column_value(7)} | #{column_value(8)}"
    puts "\n\m####################\n\n"
  end

  private

  def valid?(inputs)
    inputs.is_a?(Array) && inputs.length == 9
  end

  def column_value(index)
    val = @values[index]
    return val unless val.nil? || val.empty?

    index + 1
  end
end
