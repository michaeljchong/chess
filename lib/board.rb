require_relative 'pieces'

class Board
  def initialize
    @board = Array.new(8) { Array.new(8) }
    populate
  end

  def display
    puts ' abcdefgh'
    @board.each_with_index do |row, i|
      print 8 - i
      row.each do |tile|
        print tile ? tile.symbol : ' '
      end
      puts 8 - i
    end
    puts ' abcdefgh'
  end

  def populate
    colors = %w[black white]
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
      @board[row[i][1]].map! { Pawn.new(color) }
    end
  end

  def position(row, col)
    @board[row][col]
  end

  def update(move)

  end
end
