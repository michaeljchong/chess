class Board
  def initialize
    @board = Array.new(8) { Array.new (8) }
  end

  def display
    @board.each do |row|
      p row
    end
  end
end

Board.new.display
