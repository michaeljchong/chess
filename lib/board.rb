require_relative 'pieces'

class Board
  def initialize
    @board = Array.new(8) { Array.new (8) }
    populate
  end

  def display
    @board.each do |row|
      p row
    end
  end

  def populate
    colors = ['black', 'white']
    row = [[0, 1], [7, 6]]
    colors.each_with_index do |color, i|
      @board[row[i][0]] = [
        Rook.new(color),
        Knight.new(color),
        Bishop.new(color),
        Queen.new(color),
        King.new(color),
        Bishop.new(color),
        Knight.new(color),
        Rook.new(color)
      ]
      @board[row[i][1]].map! { |tile| Pawn.new(color) }
    end
  end
end
