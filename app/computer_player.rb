# frozen_string_literal: true

# Computer player
class ComputerPlayer < Player
  def fetch_input(board_values)
    board_values.each_with_index.map do |board_value, index|
      index + 1 if board_value.empty?
    end.compact.sample
  end
end
