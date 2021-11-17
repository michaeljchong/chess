require_relative 'board'

class Pieces
  attr_reader :color, :symbol

  def initialize(color, symbol)
    @color = color
    @symbol = symbol
  end
end

class Pawn < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2659" : "\u265f"
    super(color, symbol)
  end

  def moves?(row, col, board)
    if @color == 'white' && row.positive?
      board.position(row - 1, col).nil? ||
        (col.positive? && board.position(row - 1, col - 1) && board.position(row - 1, col - 1).color == 'black') ||
        (col < 7 && board.position(row - 1, col + 1) && board.position(row - 1, col + 1).color == 'black')
    elsif @color == 'black' && row < 7
      board.position(row + 1, col).nil? ||
        (col.positive? && board.position(row + 1, col - 1) && board.position(row + 1, col - 1).color == 'white') ||
        (col < 7 && board.position(row + 1, col + 1) && board.position(row + 1, col + 1).color == 'white')
    end
  end

  def valid_move?(start_row, start_col, end_row, end_col, board)
    # one move forward if no other pieces are in the way
    # two moves forward if no ther pieces are in the way and pawn hasn't moved yet
    # diagonal forward if attacking opponent
    # en passant - if opponent moved two forward on previous turn and opponents pawn is next to our pawn, can move diagonal forward behind opponents pawn
  end
end

class Rook < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2656" : "\u265c"
    super(color, symbol)
  end
end

class Knight < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2658" : "\u265e"
    super(color, symbol)
  end
end

class Bishop < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2657" : "\u265d"
    super(color, symbol)
  end
end

class Queen < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2655" : "\u265b"
    super(color, symbol)
  end
end

class King < Pieces
  def initialize(color)
    symbol = color == 'white' ? "\u2654" : "\u265a"
    super(color, symbol)
  end
end
